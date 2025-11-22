#!/bin/bash

# Detect platform
if [ -n "$PREFIX" ] && [ -d "$PREFIX" ]; then
    # Likely Termux on Android
    PLATFORM="Pahe-DL-Android"
else
    # Assume Linux
    PLATFORM="Pahe-DL-Linux"
fi

echo "Detected platform: $PLATFORM"

# Get latest release URL from GitHub
LATEST_URL=$(curl -s "https://api.github.com/repos/HashShin/Pahe-DL/releases/latest" \
  | grep "browser_download_url" \
  | grep "$PLATFORM" \
  | cut -d '"' -f 4)

if [ -z "$LATEST_URL" ]; then
    echo "Could not find latest $PLATFORM binary."
    exit 1
fi

# Download the binary
OUTPUT_FILE=$(basename "$LATEST_URL")
echo "Downloading $OUTPUT_FILE..."
curl -L -o "$OUTPUT_FILE" "$LATEST_URL"

# Make it executable
chmod +x "$OUTPUT_FILE"

clear
# Define color codes
GREEN="\033[1;32m"
RESET="\033[0m"

echo "Downloaded $OUTPUT_FILE successfully."
echo
echo "To use, just run: ${GREEN}./$OUTPUT_FILE${RESET}"
