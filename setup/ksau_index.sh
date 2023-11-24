#!/usr/bin/env bash

################################################################################
# Script: global_index_installer.sh
# Author: Sipun Ku Mahanta
# Date: October 26, 2023
# Description: This script automates the installation and setup of global_index_source.
################################################################################

# Prompt user for sudo password
echo "Please enter your sudo password:"
read -s sudo_password

# Display a friendly message
echo "🌐 Global Index Source Installer 🌐"
echo "Author: Sipun Ku Mahanta"
echo "--------------------------------"

# Install the global_index_source tool
echo "🚀 Installing global_index_source tool..."
curl -s https://raw.githubusercontent.com/ksauraj/global_index_source/master/setup | sudo -S bash <<< "$sudo_password"

# Perform initial setup
echo "🔧 Running the initial setup..."
ksau setup

# Install dependencies
echo "📦 Installing dependencies..."
ksau dependencies
sudo apt-get install jq

# Completion message
echo "✅ Installation and setup completed successfully!"
echo "You are now ready to use global_index_source. Enjoy your global indexing experience! 🌍"
