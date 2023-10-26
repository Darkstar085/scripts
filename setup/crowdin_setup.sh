#!/usr/bin/env bash

# Copyright (c) 2022 Sipun Ku Mahanta

# Script to set up the environment for CrowdIn CLI
# https://support.crowdin.com/cli-tool/#installation

# Color codes for eyecandy
GREEN=$(tput setaf 2)
BOLD=$(tput bold)
RESET=$(tput sgr0)

# Function to display a formatted message
function display_message() {
    echo -e "${BOLD}${GREEN}$1${RESET}"
}

# Step 1: Install crowdin-cli
display_message "Step 1: Installing crowdin-cli"
wget https://artifacts.crowdin.com/repo/deb/crowdin3.deb -O crowdin.deb
sudo dpkg -i crowdin.deb
echo "crowdin-cli installed"
echo ""

# Step 2: Installing required python packages
display_message "Step 2: Installing required python packages..."
sudo apt-get install python3-git python3-yaml python3-lxml
echo "Done installing required Python packages."
echo ""

# Step 3: Test crowdin-cli
display_message "Step 3: Testing crowdin-cli"
echo "Your crowdin version:"
crowdin --version

display_message "Environment setup for CrowdIn CLI is complete."
