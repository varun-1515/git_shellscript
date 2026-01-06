#!/bin/bash

# Check if a file name is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"
EXT="${FILE##*.}"   # Extract file extension

case "$EXT" in
    txt)
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
    *)
        echo "File type: Unknown"
        ;;
esac

