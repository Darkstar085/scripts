#!/bin/bash

echo "Syncing device repos"
git clone https://github.com/LineageOS/android_device_xiaomi_land.git -b cm-14.1 device/xiaomi/land
git clone https://github.com/LineageOS/android_kernel_xiaomi_msm8937.git -b cm-14.1 kernel/xiaomi/msm8937
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi.git -b cm-14.1 vendor/xiaomi
echo "Sync Complete"
echo "Syncing Hals"
rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
git clone https://github.com/LineageOS/android_hardware_qcom_audio.git -b cm-14.1-caf-8937 hardware/qcom/audio-caf/msm8937
git clone https://github.com/LineageOS/android_hardware_qcom_display.git -b cm-14.1-caf-8937 hardware/qcom/display-caf/msm8937
git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b cm-14.1-caf-8937 hardware/qcom/media-caf/msm8937
echo "Sync Complete"
echo "Now you are good to go"
