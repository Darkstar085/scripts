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
