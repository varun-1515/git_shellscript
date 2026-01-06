#!/bin/bash

OS_NAME=$(uname -s)

case "$OS_NAME" in
    Linux)
        echo "Operating System: Linux"
        ;;
    Darwin)
        echo "Operating System: macOS"
        ;;
    FreeBSD)
        echo "Operating System: FreeBSD"
        ;;
    OpenBSD)
        echo "Operating System: OpenBSD"
        ;;
    NetBSD)
        echo "Operating System: NetBSD"
        ;;
    CYGWIN*|MINGW*|MSYS*)
        echo "Operating System: Windows (via Unix-like environment)"
        ;;
    *)
        echo "Operating System: Unknown ($OS_NAME)"
        ;;
esac

