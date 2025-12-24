.PHONY: build install run clean help

APP_DESC_NAME = "Hello Dan CLI"
APP_NAME="HelloDanCLI"
BUILD_DIR="build"
APP_BUNDLE="${BUILD_DIR}/${APP_NAME}.app"
CONTENTS_DIR="${APP_BUNDLE}/Contents"
MACOS_DIR="${CONTENTS_DIR}/MacOS"
RESOURCES_DIR="${CONTENTS_DIR}/Resources"

run: build
	@echo "Launching ${APP_NAME}/main..."

build: build/main

build/main: HelloDanCLI/HelloDanCLI.swift
	@./build.sh

clean:
	@echo "Cleaning build artifacts..."
	@rm -rf build
	@echo "Clean complete"

help:
	@echo "${APP_DESC_NAME} - Build Commands"
	@echo ""
	@echo "  make build    - Build the $APP_DESC_NAME app"
	@echo "  make run      - Build and run the app"
	@echo "  make clean    - Remove build artifacts"
	@echo ""
