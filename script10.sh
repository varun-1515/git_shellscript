#!/bin/bash

OS_NAME=$(uname -s)
KERNEL_VERSION=$(uname -r)
ARCHITECTURE=$(uname -m)

case "$OS_NAME" in
    Linux)
        OS="Linux"
        ;;
    Darwin)
        OS="macOS"
        ;;
    FreeBSD)
        OS="FreeBSD"
        ;;
    OpenBSD)
        OS="OpenBSD"
        ;;
    NetBSD)
        OS="NetBSD"
        ;;
    CYGWIN*|MINGW*|MSYS*)
        OS="Windows (Unix-like environment)"
        ;;
    *)
        OS="Unknown"
        ;;
esac

echo "Operating System : $OS"
echo "Kernel Version   : $KERNEL_VERSION"
echo "Architecture     : $ARCHITECTURE"

