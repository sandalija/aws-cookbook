#!/bin/sh

info() {
  echo "INFO: $1"
}

error() {
  echo "ERROR: $1" >&2
}

# Check that node and npm are installed
if ! command -v node > /dev/null 2>&1; then
  error "Node.js is not installed. Please install it from https://nodejs.org/ and try again."
  exit 1
fi
if ! command -v npm > /dev/null 2>&1; then
  error "npm is not installed. Please install it from https://nodejs.org/ and try again."
  exit 1
fi

# Install dependencies
info  "Installing dependencies..."
npm install

npm run start