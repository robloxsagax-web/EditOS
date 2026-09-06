#!/usr/bin/env bash
# Create required directories
mkdir -p .editos resource

# 1. Download models.zip to .editos/ and extract it (keep original directory name)
wget "https://image-url-2-feature-1251524319.cos.ap-shanghai.myqcloud.com/editos/models.zip" \
  -O .editos/models.zip

unzip -o .editos/models.zip -d .editos/models/

# Remove the original archive
rm .editos/models.zip


# 2. Download resource.zip to .editos/ and extract it into ./resource
wget "https://image-url-2-feature-1251524319.cos.ap-shanghai.myqcloud.com/editos/resource.zip" \
  -O .editos/resource.zip

unzip -o .editos/resource.zip -d resource

# Remove the original archive
rm .editos/resource.zip

# List of filenames
files=("brand_black.png" "brand_white.png" "logo.png" "dice.png" "github.png" "node_map.png" "user_guide.png")

# Base URL
base_url="https://image-url-2-feature-1251524319.cos.ap-shanghai.myqcloud.com/zailin/datasets/edit_os"

# Download each file
for f in "${files[@]}"; do
    wget "$base_url/$f" -O "web/static/$f"
done