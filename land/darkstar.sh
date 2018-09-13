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

usage() {

printf "\n\033[1musage: $0 [team code]\033[0m\n"
printf "\navailable team code options:"
printf "\n     mm         - for marshmallow\n"
printf "\n     nougat     - for Nougat\n"
printf "\n     nich       - for Nichcream\n"
printf "\n     tr         - for Team Reloaded\n"
printf "\n     dr         - for Darkstar\n"
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

if [ $1 = "mm" ]
  then
echo -e ""
echo -e "${CLR_BLD_BLU}Cloninging device repos...${CLR_RST}"
git clone https://github.com/fedosis/android_device_xiaomi_land.git -b cm-13.0-up device/xiaomi/land
git clone https://github.com/fedosis/android_kernel_xiaomi_msm8937-1.git kernel/xiaomi/msm8937
git clone https://github.com/fedosis/proprietary_vendor_xiaomi -b cm-13.0-up vendor/xiaomi
echo -e "${CLR_BLD_BLU}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_BLU}Cloninging Hals...${CLR_RST}"
rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
rm -rf device/qcom/common
rm -rf vendor/qcom/opensource/cryptfs_hw
git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b cm-13.0-caf-8937 hardware/qcom/media-caf/msm8937
git clone https://github.com/LineageOS/android_hardware_qcom_audio.git -b cm-13.0-caf-8937 hardware/qcom/audio-caf/msm8937
git clone https://github.com/HridayHS/android_hardware_qcom_display.git -b cm-13.0-caf-8937  hardware/qcom/display-caf/msm8937
git clone https://Github.com/lineageos/android_device_qcom_common -b cm-13.0 device/qcom/common
git clone https://Github.com/lineageos/android_vendor_qcom_opensource_cryptfs_hw -b cm-13.0 vendor/qcom/opensource/cryptfs_hw
echo -e "${CLR_BLD_BLU}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_BLU}Applying Patch...${CLR_RST}"
cd vendor/cm
git fetch https://review.lineageos.org/LineageOS/android_vendor_cm refs/changes/44/144744/64 && git cherry-pick FETCH_HEAD
cd ..
echo -e "${CLR_BLD_BLU}Patching Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_BLU}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""

elif [ $1 = "nougat" ]
  then
echo -e ""
echo -e "${CLR_BLD_GRN}Cloning device repos...${CLR_RST}"
git clone https://github.com/LineageOS/android_device_xiaomi_land.git -b cm-14.1 device/xiaomi/land
git clone https://github.com/LineageOS/android_kernel_xiaomi_msm8937.git -b cm-14.1 kernel/xiaomi/msm8937
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi.git -b cm-14.1 vendor/xiaomi
echo -e "${CLR_BLD_GRN}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_GRN}Cloning Hals...${CLR_RST}"
rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
git clone https://github.com/LineageOS/android_hardware_qcom_audio.git -b cm-14.1-caf-8937 hardware/qcom/audio-caf/msm8937
git clone https://github.com/LineageOS/android_hardware_qcom_display.git -b cm-14.1-caf-8937 hardware/qcom/display-caf/msm8937
git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b cm-14.1-caf-8937 hardware/qcom/media-caf/msm8937
echo -e "${CLR_BLD_GRN}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_GRN}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "nich" ]
  then
echo -e ""
echo -e "${CLR_BLD_CYA}Syncing device repos...${CLR_RST}"
git clone https://github.com/nichcream/android_device_xiaomi_land.git -b 8.1 device/xiaomi/land
git clone https://github.com/nichcream/wingtech_kernel_msm8937.git -b 8.1 kernel/xiaomi/msm8937
git clone https://github.com/nichcream/proprietary_vendor_xiaomi.git -b 8.1 vendor/xiaomi
echo -e "${CLR_BLD_CYA}Sync Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_CYA}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
elif [ $1 = "tr" ]
  then
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
elif [ $1 = "dr" ]
  then
echo -e ""
echo -e "${CLR_BLD_RED}Cloning device repos...${CLR_RST}"
git clone https://github.com/Sweeto143/device_xiaomi_land.git -b oreo device/xiaomi/land
git clone https://github.com/Sweeto143/android_kernel_xiaomi_land.git -b oreo kernel/xiaomi/msm8937
git clone https://github.com/Sweeto143/proprietary_vendor_xiaomi_land.git -b oreo vendor/xiaomi
echo -e "${CLR_BLD_RED}Cloning Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_RED}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""

else
usage
printf "\n\e[1;31mERROR:\e[0m Unknown option: $1\n"

fi
