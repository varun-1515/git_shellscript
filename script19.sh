#!/bin/bash

# Log file for unknown file types
UNKNOWN_LOG="unknown_files.log"

# Check if a file name is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"

# Check if the file exists
if [ ! -e "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

# Get file size in human-readable format
FILE_SIZE=$(du -h "$FILE" | awk '{print $1}')

BASENAME=$(basename "$FILE")
EXTENSION="${BASENAME##*.}"

# Handle compound extensions
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

# Detect file type
case "$EXTENSION" in
    txt|log)
        TYPE="Text file"
        ;;
    sh)
        TYPE="Shell script"
        ;;
    c)
        TYPE="C source file"
        ;;
    cpp|cxx)
        TYPE="C++ source file"
        ;;
    py)
        TYPE="Python script"
        ;;
    jpg|jpeg|png|gif)
        TYPE="Image file"
        ;;
    pdf)
        TYPE="PDF document"
        ;;
    mp3|wav)
        TYPE="Audio file"
        ;;
    mp4|mkv|avi)
        TYPE="Video file"
        ;;
    tar.gz|tar.bz2|tar.xz)
        TYPE="Compressed archive"
        ;;
    *)
        TYPE="Unknown"
        # Log unknown file type with timestamp
        echo "$(date '+%Y-%m-%d %H:%M:%S') - $FILE" >> "$UNKNOWN_LOG"
        ;;
esac

echo "File: $FILE"
echo "Type: $TYPE"
echo "Size: $FILE_SIZE"

