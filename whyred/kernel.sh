#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018-2021 Sipun Ku Mahanta<sipunkumar85@gmail.com>

# Define color codes for output messages
CLR_RST=$(tput sgr0)
CLR_BLD=$(tput bold)
CLR_BLD_RED=$CLR_RST$CLR_BLD$(tput setaf 1)

# Display a title in red
echo -e ""
echo -e "${CLR_BLD_RED}██████╗  █████╗ ██████╗ ██╗  ██╗███████╗████████╗ █████╗ ██████╗ ${CLR_RST}"
echo -e "${CLR_BLD_RED}██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║███████║██████╔╝█████╔╝ ███████╗   ██║   ███████║██████╔╝${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██████╔╝██║  ██║██║  ██║██║  ██╗███████║   ██║   ██║  ██║██║  ██║${CLR_RST}"
echo -e "${CLR_BLD_RED}╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝${CLR_RST}"
echo -e ""

# Record the start time
CLONE_START=$(date +"%s")

echo -e ""
echo -e "${CLR_BLD_RED}Removing Existing Kernel...${CLR_RST}"

# Remove any existing kernel
rm -rf $PWD/whyred

echo -e "${CLR_BLD_RED}Removed...${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Cloning Kernel...${CLR_RST}"

# Clone the kernel repository from GitHub to the 'whyred' directory
git clone git@github.com:sreekfreak995/kranul.git -b eas whyred

echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Entering Kernel Directory...${CLR_RST}"

# Change the working directory to 'whyred'
cd whyred

echo -e "${CLR_BLD_RED}Now at $PWD...${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Changing branch to twelve...${CLR_RST}"

# Checkout the 'twelve' branch
git checkout -b twelve

echo -e "${CLR_BLD_RED}Checkout Done...${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Pushing to My Github...${CLR_RST}"

# Push the 'twelve' branch to your GitHub repository
git push -f git@github.com:Darkstar085/kernel_xiaomi_whyred.git

echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Pushing to SuperiorOS-Devices Org...${CLR_RST}"

# Push the 'twelve' branch to the SuperiorOS-Devices organization
git push -f git@github.com:SuperiorOS-Devices/kernel_xiaomi_whyred.git

echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Pushing to PixysOS-Devices Org...${CLR_RST}"

# Push the 'twelve' branch to the PixysOS-Devices organization
git push -f git@github.com:PixysOS-Devices/kernel_xiaomi_whyred.git

echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""

# Checkout the '12' branch (corrected from '12' to 'twelve' in the previous version)
git checkout -b 12

echo -e "${CLR_BLD_RED}Pushing to Sakura-Devices Org...${CLR_RST}"

# Push the '12' branch to the Sakura-Devices organization
git push -f git@github.com:Sakura-Devices/kernel_xiaomi_whyred.git

echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Remove Kernel...${CLR_RST}"

# Return to the previous directory and remove the 'whyred' directory
cd ..
rm -rf $PWD/whyred

echo -e "${CLR_BLD_RED}Done...${CLR_RST}"
echo -e ""

# Calculate and display the script execution duration
CLONE_END=$(date +"%s")
DURATION=$((CLONE_END - CLONE_START))
echo -e ""
echo -e "${CLR_BLD_RED}Took $DURATION seconds...${CLR_RST}"
echo -e ""
echo -e ""
