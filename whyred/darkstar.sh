#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018-2021 Sipun Ku Mahanta<sipunkumar85@gmail.com>

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

usage() {

printf "\n\033[1musage: $0 [team code]\033[0m\n"
printf "\navailable team code options:"
printf "\n     o         - for Oreo\n"
printf "\n     p         - for Pie\n"
printf "\n     q         - for Ten\n"
printf "\n     r         - for Eleven\n"
printf "\n     s         - for Twelve\n"
printf "\n     superior  - for Superior\n"
printf "\n     sakura    - for Sakura\n"
printf "\n     pixys     - for Pixys\n"
printf "\n     dot       - for Dot\n"
printf "\n     aosip     - for AOSiP\n"

}

echo -e ""
echo -e "${CLR_BLD_RED}██████╗  █████╗ ██████╗ ██╗  ██╗███████╗████████╗ █████╗ ██████╗ ${CLR_RST}"
echo -e "${CLR_BLD_RED}██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║███████║██████╔╝█████╔╝ ███████╗   ██║   ███████║██████╔╝${CLR_RST}"
echo -e "${CLR_BLD_RED}██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_RED}██████╔╝██║  ██║██║  ██║██║  ██╗███████║   ██║   ██║  ██║██║  ██║${CLR_RST}"
echo -e "${CLR_BLD_RED}╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝${CLR_RST}"
echo -e ""

[ -z "$1" ] && usage && exit

if [ $1 = "o" ]
  then
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_xiaomi_whyred.git -b oreo device/xiaomi/whyred
git clone https://github.com/Darkstar085/kernel_xiaomi_whyred.git -b oreo kernel/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred.git -b oreo vendor/xiaomi/whyred
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Devicesettings...${CLR_RST}"
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-15.1 packages/resources/devicesettings
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Toolchains...${CLR_RST}"
rm -rf prebuilts/clang/host/linux-x86
git clone https://github.com/AOSiP/platform_prebuilts_clang_host_linux-x86.git -b oreo-mr1 prebuilts/clang/host/linux-x86
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning MIUI camera...${CLR_RST}"
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b oreo vendor/xiaomi/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "p" ]
  then
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_xiaomi_whyred.git -b pie device/xiaomi/whyred
git clone https://github.com/Darkstar085/kernel_xiaomi_whyred.git -b pie kernel/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred.git -b pie vendor/xiaomi/whyred
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Devicesettings...${CLR_RST}"
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-16.0 packages/resources/devicesettings
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Toolchains...${CLR_RST}"
rm -rf prebuilts/clang/host/linux-x86
git clone https://github.com/SuperiorOS/android_prebuilts_clang_host_linux-x86.git -b pie prebuilts/clang/host/linux-x86
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning MIUI camera...${CLR_RST}"
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b pie vendor/xiaomi/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "q" ]
  then
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_xiaomi_whyred.git -b ten device/xiaomi/whyred
git clone https://github.com/Darkstar085/kernel_xiaomi_whyred.git -b ten kernel/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred.git -b ten vendor/xiaomi/whyred
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Devicesettings...${CLR_RST}"
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-17.1 packages/resources/devicesettings
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Toolchains...${CLR_RST}"
rm -rf prebuilts/clang/host/linux-x86
git clone https://github.com/SuperiorOS/android_prebuilts_clang_host_linux-x86.git -b ten prebuilts/clang/host/linux-x86
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "r" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/xiaomi/whyred
rm -rf device/xiaomi/sdm660-common
rm -rf kernel/xiaomi/whyred
rm -rf vendor/xiaomi/whyred
rm -rf vendor/xiaomi/sdm660-common
rm -rf vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_xiaomi_whyred.git -b eleven device/xiaomi/whyred
git clone https://github.com/Darkstar085/device_xiaomi_whyred-common.git -b eleven device/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/kernel_xiaomi_whyred.git -b eleven kernel/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred.git -b eleven vendor/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred-common.git -b eleven vendor/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b eleven vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "s" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/xiaomi/whyred
rm -rf device/xiaomi/sdm660-common
rm -rf kernel/xiaomi/whyred
rm -rf vendor/xiaomi
rm -rf vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_xiaomi_whyred.git -b twelve device/xiaomi/whyred
git clone https://github.com/Darkstar085/device_xiaomi_whyred-common.git -b twelve device/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/kernel_xiaomi_whyred.git -b twelve kernel/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred.git -b twelve vendor/xiaomi
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b twelve vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "superior" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/xiaomi/whyred
rm -rf device/xiaomi/sdm660-common
rm -rf kernel/xiaomi/whyred
rm -rf vendor/xiaomi
rm -rf vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/SuperiorOS-Devices/device_xiaomi_whyred.git -b twelve device/xiaomi/whyred
git clone https://github.com/SuperiorOS-Devices/device_xiaomi_whyred-common.git -b twelve device/xiaomi/sdm660-common
git clone https://github.com/SuperiorOS-Devices/kernel_xiaomi_whyred.git -b twelve kernel/xiaomi/whyred
git clone https://github.com/SuperiorOS-Devices/vendor_xiaomi_whyred.git -b twelve vendor/xiaomi
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b twelve vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
elif [ $1 = "sakura" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/xiaomi/whyred
rm -rf device/xiaomi/sdm660-common
rm -rf kernel/xiaomi/whyred
rm -rf vendor/xiaomi/whyred
rm -rf vendor/xiaomi/sdm660-common
rm -rf vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Sakura-Devices/device_xiaomi_whyred.git -b 11 device/xiaomi/whyred
git clone https://github.com/Sakura-Devices/device_xiaomi_whyred-common.git -b 11 device/xiaomi/sdm660-common
git clone https://github.com/Sakura-Devices/kernel_xiaomi_whyred.git -b 11 kernel/xiaomi/whyred
git clone https://github.com/Sakura-Devices/vendor_xiaomi_whyred.git -b 11 vendor/xiaomi/whyred
git clone https://github.com/Sakura-Devices/vendor_xiaomi_whyred-common.git -b 11 vendor/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b eleven vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
elif [ $1 = "pixys" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/xiaomi/whyred
rm -rf device/xiaomi/sdm660-common
rm -rf kernel/xiaomi/whyred
rm -rf vendor/xiaomi
rm -rf vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/PixysOS-Devices/device_xiaomi_whyred.git -b twelve device/xiaomi/whyred
git clone https://github.com/PixysOS-Devices/device_xiaomi_whyred-common.git -b twelve device/xiaomi/sdm660-common
git clone https://github.com/PixysOS-Devices/kernel_xiaomi_whyred.git -b twelve kernel/xiaomi/whyred
git clone https://github.com/PixysOS-Devices/vendor_xiaomi_whyred.git -b twelve vendor/xiaomi
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b twelve vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Devicesettings...${CLR_RST}"
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-18.1 packages/resources/devicesettings
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
elif [ $1 = "aosip" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/xiaomi/whyred
rm -rf device/xiaomi/sdm660-common
rm -rf kernel/xiaomi/whyred
rm -rf vendor/xiaomi/whyred
rm -rf vendor/xiaomi/sdm660-common
rm -rf vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_xiaomi_whyred.git -b aosip-eleven device/xiaomi/whyred
git clone https://github.com/Darkstar085/device_xiaomi_whyred-common.git -b eleven device/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/kernel_xiaomi_whyred.git -b eleven kernel/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred.git -b eleven vendor/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred-common.git -b eleven vendor/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b eleven vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Devicesettings...${CLR_RST}"
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-18.1 packages/resources/devicesettings
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
elif [ $1 = "dot" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/xiaomi/whyred
rm -rf device/xiaomi/sdm660-common
rm -rf kernel/xiaomi/whyred
rm -rf vendor/xiaomi/whyred
rm -rf vendor/xiaomi/sdm660-common
rm -rf vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_xiaomi_whyred.git -b dot11 device/xiaomi/whyred
git clone https://github.com/Darkstar085/device_xiaomi_whyred-common.git -b eleven device/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/kernel_xiaomi_whyred.git -b eleven kernel/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred.git -b eleven vendor/xiaomi/whyred
git clone https://github.com/Darkstar085/vendor_xiaomi_whyred-common.git -b eleven vendor/xiaomi/sdm660-common
git clone https://github.com/Darkstar085/vendor_xiaomi_MiuiCamera.git -b eleven vendor/MiuiCamera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
else
usage
printf "\n\e[1;31mERROR:\e[0m Unknown option: $1\n"

fi
