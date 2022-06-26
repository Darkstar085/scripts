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
printf "\n     q         - for Ten\n"
printf "\n     r         - for Eleven\n"
printf "\n     s         - for Twelve\n"
printf "\n  superior     - for Superior\n"
printf "\n  clean        - for deleting\n"

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

if [ $1 = "q" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/oneplus/avicii
rm -rf device/oneplus/common
rm -rf kernel/oneplus/avicii
rm -rf vendor/oneplus/avicii
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Sweeto143/device_oneplus_avicii.git -b ten device/oneplus/avicii
git clone https://github.com/LineageOS/android_device_oneplus_common.git -b lineage-17.1 device/oneplus/common
git clone https://github.com/Sweeto143/kernel_oneplus_avicii.git -b ten kernel/oneplus/avicii
git clone https://github.com/Sweeto143/vendor_oneplus_avicii.git -b ten vendor/oneplus/avicii
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning Proton...${CLR_RST}"
git clone https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/clang-proton
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "r" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/oneplus/avicii
rm -rf device/oneplus/common
rm -rf kernel/oneplus/avicii
rm -rf vendor/oneplus/avicii
rm -rf vendor/oneplus/avicii-vendor
rm -rf vendor/oneplus-firmware
rm -rf vendor/oneplus/avicii-camera
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_oneplus_avicii.git -b eleven device/oneplus/avicii
git clone https://github.com/Darkstar085/device_oneplus_common.git -b eleven device/oneplus/common
git clone https://github.com/Darkstar085/vendor_oneplus_avicii.git -b eleven vendor/oneplus/avicii
git clone https://gitlab.com/PixysOS-Devices/vendor_oneplus_avicii.git -b eleven vendor/oneplus/avicii-vendor
git clone https://gitlab.com/PixysOS-Devices/vendor_oneplus-firmware.git -b eleven vendor/oneplus-firmware
git clone https://gitlab.com/PixysOS/vendor_oneplus_avicii-camera.git -b eleven vendor/oneplus/avicii-camera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
elif [ $1 = "s" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/oneplus
rm -rf kernel/oneplus/avicii
rm -rf vendor/oneplus
rm -rf hardware/oneplus
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Darkstar085/device_oneplus_avicii.git -b twelve device/oneplus/avicii
git clone https://github.com/Darkstar085/device_oneplus_avicii-common.git -b twelve device/oneplus/sm7250-common
git clone https://github.com/KakatkarAkshay/device_oneplus_extras.git -b twelve device/oneplus/extras
git clone https://github.com/Darkstar085/kernel_oneplus_avicii.git -b twelve kernel/oneplus/avicii
git clone https://github.com/Darkstar085/vendor_oneplus_avicii.git -b twelve vendor/oneplus/avicii
git clone https://github.com/Darkstar085/vendor_oneplus_avicii-common.git -b twelve vendor/oneplus/sm7250-common
git clone https://github.com/Darkstar085/hardware_oneplus.git -b twelve hardware/oneplus
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_oneplus_wfdcommon.git -b lito vendor/oneplus/wfdcommon
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_oneplus-firmware.git -b eleven vendor/oneplus/firmware
git clone https://gitlab.com/superioros/vendor_oneplus_avicii-camera.git -b twelve vendor/oneplus/avicii-camera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
elif [ $1 = "superior" ]
  then
echo -e "${CLR_BLD_RED}Removing device repos...${CLR_RST}"
rm -rf device/oneplus
rm -rf kernel/oneplus/avicii
rm -rf vendor/oneplus
rm -rf hardware/oneplus
echo -e "${CLR_BLD_RED}Device repos removed ...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/SuperiorOS-Devices/device_oneplus_avicii.git -b twelve device/oneplus/avicii
git clone https://github.com/SuperiorOS-Devices/device_oneplus_avicii-common.git -b twelve device/oneplus/sm7250-common
git clone https://github.com/SuperiorOS-Devices/kernel_oneplus_avicii.git -b twelve kernel/oneplus/avicii
git clone https://github.com/SuperiorOS-Devices/vendor_oneplus_avicii.git -b twelve vendor/oneplus/avicii
git clone https://github.com/SuperiorOS-Devices/vendor_oneplus_avicii-common.git -b twelve vendor/oneplus/sm7250-common
git clone https://github.com/SuperiorOS-Devices/hardware_oneplus.git -b twelve hardware/oneplus
git clone https://gitlab.com/superioros/vendor_oneplus-firmware.git -b twelve vendor/oneplus/firmware
git clone https://gitlab.com/superioros/vendor_oneplus_avicii-camera.git -b twelve vendor/oneplus/avicii-camera
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
elif [ $1 = "clean" ]
  then
echo -e "${CLR_BLD_RED}Deleting device trees...${CLR_RST}"
rm -rf device/oneplus
rm -rf kernel/oneplus/avicii 
rm -rf vendor/oneplus
rm -rf hardware/oneplus
echo -e "${CLR_BLD_RED}Device trees removed ...${CLR_RST}"
else
usage
printf "\n\e[1;31mERROR:\e[0m Unknown option: $1\n"

fi
