#!/bin/bash

# HelloDanCLI Build Script

APP_NAME="HelloDanCLI"
BUILD_DIR="build"

echo "Building $APP_NAME with Swift Package Manager..."

# Build using Swift Package Manager
swift build

if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

# Copy the built executable to the HelloDanCLI directory
echo "Copying executable..."
cp .build/debug/$APP_NAME "$BUILD_DIR/main"

# Make executable
chmod +x "$BUILD_DIR/main"

echo "Build successful!"
echo "Executable created at: $BUILD_DIR/main"
echo ""
echo "To run:"
./$BUILD_DIR/main --help
