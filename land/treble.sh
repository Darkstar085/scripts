#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018 Sipun Ku Mahanta<sipunkumar85@gmail.com)
# Copyright (C) 2018 Sweeto143@github / Darkstar085@XDA

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
echo -e "${CLR_BLD_PPL}██████╗  █████╗ ██████╗ ██╗  ██╗███████╗████████╗ █████╗ ██████╗ ${CLR_RST}"
echo -e "${CLR_BLD_PPL}██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_PPL}██║  ██║███████║██████╔╝█████╔╝ ███████╗   ██║   ███████║██████╔╝${CLR_RST}"
echo -e "${CLR_BLD_PPL}██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_PPL}██████╔╝██║  ██║██║  ██║██║  ██╗███████║   ██║   ██║  ██║██║  ██║${CLR_RST}"
echo -e "${CLR_BLD_PPL}╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_PPL}Syncing device repos...${CLR_RST}"
git clone https://github.com/TeamReloaded/android_device_xiaomi_land.git -b lineage-15.1 device/xiaomi/land
git clone https://github.com/TeamReloaded/android_kernel_xiaomi_msm8937.git -b lineage-15.1 kernel/xiaomi/msm8937
git clone https://github.com/TeamReloaded/proprietary_vendor_xiaomi.git -b lineage-15.1-land vendor/xiaomi
echo -e "${CLR_BLD_PPL}Sync Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_PPL}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
