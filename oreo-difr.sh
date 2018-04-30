#!/usr/bin/env bash

#Created By Darkstar
#Device specific BLOBS 
rm -rf device/xiaomi/land
git clone https://github.com/difr/android_device_xiaomi_land.git -b lineage-15.1 device/xiaomi/land
rm -rf kernel/xiaomi/msm8937
git clone https://github.com/difr/android_kernel_xiaomi_msm8937.git -b lineage-15.1 kernel/xiaomi/msm8937
rm -rf vendor/xiaomi
git clone https://github.com/difr/android_vendor_xiaomi.git -b lineage-15.1 vendor/xiaomi
#HAL's
rm -rf hardware/qcom/audio-caf
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b oreo-mr1-8937 hardware/qcom/audio-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b oreo-mr1-8937 hardware/qcom/audio-caf/msm8937
rm -rf hardware/qcom/display-caf
git clone https://github.com/TeamReloaded/hardware_qcom_display -b oreo-mr1-8937 hardware/qcom/display-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_display -b oreo-mr1-8937 hardware/qcom/display-caf/msm8937
rm -rf hardware/qcom/media-caf 
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b oreo-mr1-8937 hardware/qcom/media-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b oreo-mr1-8937 hardware/qcom/media-caf/msm8937