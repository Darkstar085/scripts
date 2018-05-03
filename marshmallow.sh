#!/bin/bash

echo "Syncing device repos"
git clone https://github.com/fedosis/android_device_xiaomi_land.git -b cm-13.0-up device/xiaomi/land
git clone https://github.com/fedosis/android_kernel_xiaomi_msm8937-1.git kernel/xiaomi/msm8937
git clone https://github.com/fedosis/proprietary_vendor_xiaomi -b cm-13.0-up vendor/xiaomi
echo "Sync Complete"
echo "Syncing Hals"
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
echo "Sync Complete"
echo "Syncing patch"
cd vendor/cm
git fetch https://review.lineageos.org/LineageOS/android_vendor_cm refs/changes/44/144744/64 && git cherry-pick FETCH_HEAD
cd ..
echo "Good To Go"
echo "Byeee"
