#!/usr/bin/env bash

# Copyright (c) 2022 Sipun Ku Mahanta

# Script to setup environment for crowdin
# https://support.crowdin.com/cli-tool/#installation

# Install crowdin-cli
wget https://artifacts.crowdin.com/repo/deb/crowdin3.deb -O crowdin.deb
sudo dpkg -i crowdin.deb
echo "crowdin-cli installed"
echo ""
echo "installing required python packages..."
sudo apt-get install python3-git python3-yaml python3-lxml
echo "done.."
echo ""

# Test crowdin-cli
echo "Your crowdin version:"
crowdin --version