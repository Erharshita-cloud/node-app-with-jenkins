#!/bin/bash

# Exit on error
set -e

echo "🚀 Updating package list..."
sudo apt update

echo "📦 Installing prerequisite packages..."
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo "🔐 Adding Docker’s official GPG key..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "📝 Setting up Docker repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "🔄 Updating package index again..."
sudo apt update

echo "🐳 Installing Docker Engine..."
sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

echo "✅ Docker installed successfully!"
docker --version

echo "👤 Adding current user to Docker group..."
sudo usermod -aG docker $USER

echo "⚠️ Log out and log back in (or run 'newgrp docker') to apply group changes."


