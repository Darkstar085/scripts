#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018-2020 Sipun Ku Mahanta<sipunkumar85@gmail.com>
# Copyright (C) 2018-2020 Sweeto143@github / Darkstar085@XDA

# PA Colors
# red = errors, cyan = warnings, green = confirmations, blue = informational
# plain for generic text, bold for titles, reset flag at each end of line
# plain blue should not be used for readability reasons - use plain cyan instead
CLR_RST=$(tput sgr0)                        ## reset flag
CLR_RED=$CLR_RST$(tput setaf 1)             #  red, plain
CLR_GRN=$CLR_RST$(tput setaf 2)             #  green, plain
CLR_YLW=$CLR_RST$(tput setaf 3)             #  yellow, plain
CLR_BLU=$CLR_RST$(tput setaf 4)             #  blue, plain
CLR_PPL=$CLR_RST$(tput setaf 5)             #  purple,plain
CLR_CYA=$CLR_RST$(tput setaf 6)             #  cyan, plain
CLR_BLD=$(tput bold)                        ## bold flag
CLR_BLD_RED=$CLR_RST$CLR_BLD$(tput setaf 1) #  red, bold
CLR_BLD_GRN=$CLR_RST$CLR_BLD$(tput setaf 2) #  green, bold
CLR_BLD_YLW=$CLR_RST$CLR_BLD$(tput setaf 3) #  yellow, bold
CLR_BLD_BLU=$CLR_RST$CLR_BLD$(tput setaf 4) #  blue, bold
CLR_BLD_PPL=$CLR_RST$CLR_BLD$(tput setaf 5) #  purple, bold
CLR_BLD_CYA=$CLR_RST$CLR_BLD$(tput setaf 6) #  cyan, bold

echo -e ""
echo -e "${CLR_BLD_RED}██████╗  █████╗ ██████╗ ██╗  ██╗███████╗████████╗ █████╗ ██████╗ ${CLR_RST}"
echo -e "${CLR_BLD_RED}██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║███████║██████╔╝█████╔╝ ███████╗   ██║   ███████║██████╔╝${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██████╔╝██║  ██║██║  ██║██║  ██╗███████║   ██║   ██║  ██║██║  ██║${CLR_RST}"
echo -e "${CLR_BLD_RED}╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝${CLR_RST}"
echo -e ""
CLONE_START=$(date +"%s")
echo -e ""
echo -e "${CLR_BLD_RED}Removing Existing Kernel...${CLR_RST}"
rm -rf whyred
echo -e "${CLR_BLD_RED}Removed...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Kernel...${CLR_RST}"
git clone git@github.com:sreekfreak995/kranul.git -b eas-old-cam whyred
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Entering Kernel Directory...${CLR_RST}"
cd whyred
echo -e "${CLR_BLD_RED}Now at $PWD...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Changing branch to ten...${CLR_RST}"
git checkout -b ten
echo -e "${CLR_BLD_RED}Checkout Done...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Pushing to My Github...${CLR_RST}"
git push -f git@github.com:Sweeto143/kernel_xiaomi_whyred.git
echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Pushing to SuperiorOS-Devices Org...${CLR_RST}"
git push -f git@github.com:SuperiorOS-Devices/kernel_xiaomi_whyred.git
echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Pushing to PixysOS-Devices Org...${CLR_RST}"
git push -f git@github.com:PixysOS-Devices/kernel_xiaomi_whyred.git
echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Changing branch to 10...${CLR_RST}"
git checkout -b 10
echo -e "${CLR_BLD_RED}Checkout Done...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Pushing to Sakura-Devices Org...${CLR_RST}"
git push -f git@github.com:Sakura-Devices/kernel_xiaomi_whyred.git
echo -e "${CLR_BLD_RED}Pushed...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Remove Kernel...${CLR_RST}"
rm -rf whyred
echo -e "${CLR_BLD_RED}Done...${CLR_RST}"
echo -e ""
CLONE_END=$(date +"%s")
DURATION=$((CLONE_END - CLONE_START))
echo -e ""
echo -e "${CLR_BLD_RED}Tooked $DURATION seconds...${CLR_RST}"
echo -e ""
echo -e ""
