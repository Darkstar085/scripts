#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018 Sipun Ku Mahanta<sipunkumar85@gmail.com>
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
echo -e "${CLR_BLD_RED}██████╗  █████╗ ██████╗ ██╗  ██╗███████╗████████╗ █████╗ ██████╗ ${CLR_RST}"
echo -e "${CLR_BLD_RED}██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║███████║██████╔╝█████╔╝ ███████╗   ██║   ███████║██████╔╝${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██████╔╝██║  ██║██║  ██║██║  ██╗███████║   ██║   ██║  ██║██║  ██║${CLR_RST}"
echo -e "${CLR_BLD_RED}╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝${CLR_RST}"
echo -e ""

echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone git@github.com:dotOS-Devices/android_device_xiaomi_whyred.git device/xiaomi/whyred
git clone git@github.com:dotOS-Devices/kernel_xiaomi_whyred.git kernel/xiaomi/whyred
git clone git@github.com:dotOS-Devices/vendor_xiaomi_whyred.git vendor/xiaomi/whyred
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Hals...${CLR_RST}"
rm -rf hardware/qcom/display-caf/msm8998
rm -rf hardware/qcom/audio-caf/msm8998
git clone git@github.com:SuperiorOS/android_hardware_qcom_display.git -b pie-caf-8998 hardware/qcom/display-caf/msm8998
git clone git@github.com:SuperiorOS/android_hardware_qcom_audio.git -b pie-caf-8998 hardware/qcom/audio-caf/msm8998
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning MIUI camera...${CLR_RST}"
git clone https://github.com/Sweeto143/vendor_xiaomi_MiuiCamera.git -b pie vendor/xiaomi/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""