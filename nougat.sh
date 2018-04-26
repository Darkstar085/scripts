#Created By Darkstar
#Device specific BLOBS 
rm -rf device/xiaomi/land
git clone https://github.com/LineageOS/android_device_xiaomi_land.git -b cm-14.1 device/xiaomi/land
rm -rf kernel/xiaomi/msm8937
git clone https://github.com/LineageOS/android_kernel_xiaomi_msm8937.git -b cm-14.1 kernel/xiaomi/msm8937
rm -rf vendor/xiaomi
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi.git -b cm-14.1 vendor/xiaomi

#HAL's
rm -rf hardware/qcom/audio-caf
git clone https://github.com/LineageOS/android_hardware_qcom_audio.git -b cm-14.1-caf-8937 hardware/qcom/audio-caf/msm8937
rm -rf hardware/qcom/display-caf
git clone https://github.com/LineageOS/android_hardware_qcom_display.git -b cm-14.1-caf-8937 hardware/qcom/display-caf/msm8937
rm -rf hardware/qcom/media-caf 
git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b cm-14.1-caf-8937 hardware/qcom/media-caf/msm8937
