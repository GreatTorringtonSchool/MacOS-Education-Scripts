#!/bin/bash

# Get current user and strip domain prefix
RAW_USER=$(whoami)
GTSUSER=${RAW_USER#GTS\\}

# Extract SMB URL from OriginalHomeDirectory
ORIGINAL_HOME=$(dscl /Active\ Directory/GTS/All\ Domains -read /Users/$GTSUSER OriginalHomeDirectory 2>/dev/null)
SMB_PATH=$(echo "$ORIGINAL_HOME" | grep -o 'smb://[^<]*')

echo "Using Path: $SMB_PATH"

# Mount the share using AppleScript
osascript -e "mount volume \"${SMB_PATH}\""
