#!/usr/bin/env bash

#Created By Darkstar
#Device specific BLOBS 
rm -rf device/xiaomi/land
git clone https://github.com/nichcream/android_device_xiaomi_land.git -b 8.1 device/xiaomi/land
rm -rf kernel/xiaomi/msm8937
git clone https://github.com/nichcream/wingtech_kernel_msm8937.git -b 8.1 kernel/xiaomi/msm8937
rm -rf vendor/xiaomi
git clone https://github.com/nichcream/proprietary_vendor_xiaomi.git -b 8.1 vendor/xiaomi
#Hals
rm -rf hardware/qcom/audio-caf
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b oreo-mr1-8937 hardware/qcom/audio-caf/msm8996 
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b oreo-mr1-8937 hardware/qcom/audio-caf/msm8937
rm -rf hardware/qcom/display-caf
git clone https://github.com/TeamReloaded/hardware_qcom_display -b oreo-mr1-8937 hardware/qcom/display-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_display -b oreo-mr1-8937 hardware/qcom/display-caf/msm8937
rm -rf hardware/qcom/media-caf 
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b oreo-mr1-8937 hardware/qcom/media-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b oreo-mr1-8937 hardware/qcom/media-caf/msm8937
