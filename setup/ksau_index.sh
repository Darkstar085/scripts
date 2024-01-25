#!/usr/bin/env bash

################################################################################
# Script: global_index_installer.sh
# Author: Sipun Ku Mahanta
# Date: October 26, 2023
# Description: This script automates the installation and setup of global_index_source.
################################################################################

# Display a friendly message
echo "🌐 Global Index Source Installer 🌐"
echo "Author: Sipun Ku Mahanta"
echo "--------------------------------"

# Install rclone and jq
echo "📦 Installing rclone and jq..."
sudo apt-get install -y rclone jq

# Install the global_index_source tool
echo "🚀 Installing global_index_source tool..."
curl -s https://raw.githubusercontent.com/ksauraj/global_index_source/master/setup | bash

# Perform initial setup
echo "🔧 Running the initial setup..."
ksau setup

# Completion message
echo "✅ Installation and setup completed successfully!"
echo "You are now ready to use global_index_source. Enjoy your global indexing experience! 🌍"
