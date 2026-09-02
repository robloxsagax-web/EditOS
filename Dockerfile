# Base image
FROM python:3.11-slim

WORKDIR /app

# Install system dependencies including gettext for envsubst
RUN apt-get update && apt-get install -y \
    ffmpeg wget unzip git git-lfs curl gettext && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements first for caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY src/ ./src/
COPY agent_fastapi.py .
COPY cli.py .
COPY config.toml .
COPY web/ ./web/
COPY prompts/ ./prompts/
COPY .storyline/ ./.storyline/
COPY download.sh .

# Copy ModelScope template (optional, will be used if env vars are set)
COPY modelscope_config.toml.template . 2>/dev/null || true
COPY modelscope_entrypoint.sh . 2>/dev/null || true

# Download models
RUN chmod +x download.sh && ./download.sh

# Expose port
EXPOSE 7860

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD curl -f http://localhost:7860/ || exit 1

# Run
CMD ["bash", "run.sh"]