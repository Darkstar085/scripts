#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018 Darkstar<sipunkumar85@gmail.com)

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
echo -e "${CLR_BLD_GRN}██████╗  █████╗ ██████╗ ██╗  ██╗███████╗████████╗ █████╗ ██████╗ ${CLR_RST}"
echo -e "${CLR_BLD_GRN}██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_GRN}██║  ██║███████║██████╔╝█████╔╝ ███████╗   ██║   ███████║██████╔╝${CLR_RST}"
echo -e "${CLR_BLD_GRN}██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_GRN}██████╔╝██║  ██║██║  ██║██║  ██╗███████║   ██║   ██║  ██║██║  ██║${CLR_RST}"
echo -e "${CLR_BLD_GRN}╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_GRN}Syncing device repos...${CLR_RST}"
git clone https://github.com/LineageOS/android_device_xiaomi_land.git -b cm-14.1 device/xiaomi/land
git clone https://github.com/LineageOS/android_kernel_xiaomi_msm8937.git -b cm-14.1 kernel/xiaomi/msm8937
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi.git -b cm-14.1 vendor/xiaomi
echo -e "${CLR_BLD_GRN}Sync Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_GRN}Syncing Hals...${CLR_RST}"
rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
git clone https://github.com/LineageOS/android_hardware_qcom_audio.git -b cm-14.1-caf-8937 hardware/qcom/audio-caf/msm8937
git clone https://github.com/LineageOS/android_hardware_qcom_display.git -b cm-14.1-caf-8937 hardware/qcom/display-caf/msm8937
git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b cm-14.1-caf-8937 hardware/qcom/media-caf/msm8937
echo -e "${CLR_BLD_GRN}Sync Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_GRN}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
