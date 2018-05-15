#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018 Darkstar085<sipunkumar85@gmail.com)
# Copyright (C) 2018 Sweeto143

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

git clone https://github.com/Sweeto143/dot_device_xiaomi_land.git -b dot-o device/xiaomi/land
git clone https://github.com/Sweeto143/android_kernel_xiaomi_msm8937.git -b oreo kernel/xiaomi/msm8937
git clone https://github.com/Sweeto143/proprietary_vendor_xiaomi.git -b oreo vendor/xiaomi

rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b lineage-15.1-caf-8996 hardware/qcom/audio-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b lineage-15.1-caf-8996 hardware/qcom/audio-caf/msm8937
git clone https://github.com/TeamReloaded/hardware_qcom_display.git -b lineage-15.1-caf-8996 hardware/qcom/display-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_display.git -b lineage-15.1-caf-8996 hardware/qcom/display-caf/msm8937
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b lineage-15.1-caf-8996 hardware/qcom/media-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b lineage-15.1-caf-8996 hardware/qcom/media-caf/msm8937
