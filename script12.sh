#!/bin/bash

OS_NAME=$(uname -s)

case "$OS_NAME" in
    Linux)
        echo "Detected OS: Linux"
        echo "Running Linux-specific commands..."
        uname -a
        df -h
        ;;
    Darwin)
        echo "Detected OS: macOS"
        echo "Running macOS-specific commands..."
        uname -a
        df -h
        ;;
    FreeBSD)
        echo "Detected OS: FreeBSD"
        echo "Running FreeBSD-specific commands..."
        uname -a
        df -h
        ;;
    CYGWIN*|MINGW*|MSYS*)
        echo "Detected OS: Windows (Unix-like environment)"
        echo "Running Windows-specific commands..."
        uname -a
        ;;
    *)
        echo "Unknown or unsupported Operating System: $OS_NAME"
        echo "Please run this script on Linux, macOS, FreeBSD, or Windows (Cygwin/Git Bash)."
        exit 1
        ;;
esac

