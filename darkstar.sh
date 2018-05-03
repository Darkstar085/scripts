#!/bin/bash

echo "Syncing device repos"
git clone https://github.com/Sweeto143/android_device_xiaomi_land.git -b oreo device/xiaomi/land
git clone https://github.com/Sweeto143/android_kernel_xiaomi_msm8937.git -b oreo kernel/xiaomi/msm8937
git clone https://github.com/Sweeto143/proprietary_vendor_xiaomi.git -b oreo vendor/xiaomi
echo "Sync Complete"
echo "Syncing Hals"
rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b oreo-mr1-8937 hardware/qcom/audio-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b oreo-mr1-8937 hardware/qcom/audio-caf/msm8937
git clone https://github.com/TeamReloaded/hardware_qcom_display -b oreo-mr1-8937 hardware/qcom/display-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_display -b oreo-mr1-8937 hardware/qcom/display-caf/msm8937
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b oreo-mr1-8937 hardware/qcom/media-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b oreo-mr1-8937 hardware/qcom/media-caf/msm8937
echo "Sync Complete"
echo "Bionic Patch"
cd bionic
git fetch https://github.com/TeamReloaded/bionic
git cherry-pick 1e55ab48ba3f3db809163e0476051aad718d70f2^..678dd8ad22225dfef8d76a2e9cac92dc3a843e88
cd ..
echo "Now you are good to go"
echo "Bye Script complete"