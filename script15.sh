#!/bin/bash

# Check if a file name is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"

# Extract extensions for compound files
BASENAME=$(basename "$FILE")
EXTENSION="${BASENAME##*.}"

# Handle special cases for compound extensions
case "$BASENAME" in
    *.tar.gz)
        EXTENSION="tar.gz"
        ;;
    *.tar.bz2)
        EXTENSION="tar.bz2"
        ;;
    *.tar.xz)
        EXTENSION="tar.xz"
        ;;
esac

# Detect file type based on extension
case "$EXTENSION" in
    txt|log)
        echo "File type: Text file"
        ;;
    sh)
        echo "File type: Shell script"
        ;;
    c)
        echo "File type: C source file"
        ;;
    cpp|cxx)
        echo "File type: C++ source file"
        ;;
    py)
        echo "File type: Python script"
        ;;
    jpg|jpeg|png|gif)
        echo "File type: Image file"
        ;;
    pdf)
        echo "File type: PDF document"
        ;;
    mp3|wav)
        echo "File type: Audio file"
        ;;
    mp4|mkv|avi)
        echo "File type: Video file"
        ;;
    tar.gz|tar.bz2|tar.xz)
        echo "File type: Compressed archive"
        ;;
    *)
        echo "File type: Unknown"
        ;;
esac

