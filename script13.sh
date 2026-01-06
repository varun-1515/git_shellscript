#!/bin/bash

LOG_FILE="os_detection.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

OS_NAME=$(uname -s)
OS_INFO="Unknown"

case "$OS_NAME" in
    Linux)
        OS_INFO="Linux"
        ;;
    Darwin)
        OS_INFO="macOS"
        ;;
    FreeBSD)
        OS_INFO="FreeBSD"
        ;;
    CYGWIN*|MINGW*|MSYS*)
        OS_INFO="Windows (Unix-like environment)"
        ;;
    *)
        OS_INFO="Unknown or unsupported OS: $OS_NAME"
        ;;
esac

# Display OS info
echo "[$TIMESTAMP] Detected OS: $OS_INFO"
# Log to file
echo "[$TIMESTAMP] Detected OS: $OS_INFO" >> "$LOG_FILE"

# Optional: log additional details for known OS
if [[ "$OS_INFO" != Unknown* ]]; then
    KERNEL_VERSION=$(uname -r)
    ARCHITECTURE=$(uname -m)
    echo "[$TIMESTAMP] Kernel Version: $KERNEL_VERSION"
    echo "[$TIMESTAMP] Architecture: $ARCHITECTURE"

    echo "[$TIMESTAMP] Kernel Version: $KERNEL_VERSION" >> "$LOG_FILE"
    echo "[$TIMESTAMP] Architecture: $ARCHITECTURE" >> "$LOG_FILE"
fi

