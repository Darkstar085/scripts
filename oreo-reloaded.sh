#Created By Darkstar
#Device specific BLOBS 
rm -rf device/xiaomi/land
git clone https://github.com/TeamReloaded/android_device_xiaomi_land.git -b lineage-15.1 device/xiaomi/land
rm -rf kernel/xiaomi/msm8937
git clone https://github.com/TeamReloaded/android_kernel_xiaomi_msm8937.git -b lineage-15.1 kernel/xiaomi/msm8937
rm -rf vendor/xiaomi
git clone https://github.com/TeamReloaded/proprietary_vendor_xiaomi.git -b lineage-15.1-land vendor/xiaomi
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
#Bionic
cd bionic
git fetch https://github.com/TeamReloaded/bionic
git cherry-pick 1e55ab48ba3f3db809163e0476051aad718d70f2^..678dd8ad22225dfef8d76a2e9cac92dc3a843e88
cd ..
