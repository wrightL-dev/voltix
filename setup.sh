#!/bin/bash

echo "🚀 Starting Voltix AI Setup..."
sleep 2

# Check if NVM is installed
if ! command -v nvm &> /dev/null; then
    echo "📥 NVM not found. Installing NVM..."
    sleep 2
    curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
    source ~/.bashrc
    source ~/.profile
    echo "✅ NVM installed successfully."
else
    echo "✅ NVM is already installed."
fi
sleep 2

# Reload shell to ensure NVM is available
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
sleep 2

# Install Node.js v22.13.0 if not installed
if ! nvm list | grep -q "v22.13.0"; then
    echo "📥 Installing Node.js v22.13.0..."
    sleep 2
    nvm install 22.13.0
else
    echo "✅ Node.js v22.13.0 is already installed."
fi
sleep 2

# Use Node.js v22.13.0 and set it as the default version
nvm use 22.13.0
sleep 2
nvm alias default 22.13.0
sleep 2
echo "✅ Using and setting Node.js v22.13.0 as default."
sleep 2

# Install required dependencies
echo "📦 Installing dependencies..."
sleep 2
npm install cycletls https-proxy-agent uuid bytenode
sleep 2

echo "✅ All dependencies installed."
sleep 2

echo "✅ How to run bot: node main.js"
