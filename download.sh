#!/usr/bin/env bash
set +e  # Don't exit on errors

# Create required directories
mkdir -p .editos resource web/static

# 1. Download models.zip to .editos/ and extract it (keep original directory name)
wget --timeout=30 "https://image-url-2-feature-1251524319.cos.ap-shanghai.myqcloud.com/editos/models.zip" \
  -O .editos/models.zip 2>/dev/null || true

if [ -f .editos/models.zip ] && [ -s .editos/models.zip ]; then
    unzip -o .editos/models.zip -d .editos/models/ 2>/dev/null || true
    rm .editos/models.zip
else
    echo "models.zip not available, skipping..."
    rm -f .editos/models.zip
fi

# 2. Download resource.zip to .editos/ and extract it into ./resource
wget --timeout=30 "https://image-url-2-feature-1251524319.cos.ap-shanghai.myqcloud.com/editos/resource.zip" \
  -O .editos/resource.zip 2>/dev/null || true

if [ -f .editos/resource.zip ] && [ -s .editos/resource.zip ]; then
    unzip -o .editos/resource.zip -d resource 2>/dev/null || true
    rm .editos/resource.zip
else
    echo "resource.zip not available, skipping..."
    rm -f .editos/resource.zip
fi

# List of filenames
files=("brand_black.png" "brand_white.png" "logo.png" "dice.png" "github.png" "node_map.png" "user_guide.png")

# Base URL
base_url="https://image-url-2-feature-1251524319.cos.ap-shanghai.myqcloud.com/zailin/datasets/edit_os"

# Download each file (skip if not available)
for f in "${files[@]}"; do
    wget --timeout=10 "$base_url/$f" -O "web/static/$f" 2>/dev/null || true
done

echo "Download complete (some resources may be optional)"