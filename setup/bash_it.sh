#!/bin/bash

# Clone the Bash-it repository
echo "🚀 Cloning Bash-it repository..."
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

# Setup Bash-it
echo "🔧 Setting up Bash-it..."
echo "y" | bash ~/.bash_it/install.sh

# Make "zork" the default theme
echo "🎨 Making 'zork' the default theme..."
sed -i 's/bobby/zork/g' ~/.bashrc

# Reload to apply changes
echo "♻️ Reloading to apply changes..."
source ~/.bashrc

# Completion message
echo "✅ Bash-it setup completed. 'zork' theme is now the default."