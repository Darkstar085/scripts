echo -e "${CLR_BLD_PPL}Syncing device repos...${CLR_RST}"
git clone https://github.com/TeamReloaded/android_device_xiaomi_land.git -b lineage-15.1-treble device/xiaomi/land
git clone https://github.com/TeamReloaded/android_kernel_xiaomi_msm8937.git -b lineage-15.1-treble kernel/xiaomi/msm8937
git clone https://github.com/TeamReloaded/proprietary_vendor_xiaomi.git -b lineage-15.1-treble vendor/xiaomi
echo -e "${CLR_BLD_PPL}Sync Complete...${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_PPL}Syncing Hals...${CLR_RST}"
rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b lineage-15.1-caf-8996 hardware/qcom/audio-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_audio.git -b lineage-15.1-caf-8996 hardware/qcom/audio-caf/msm8937
git clone https://github.com/TeamReloaded/hardware_qcom_display.git -b lineage-15.1-caf-8996 hardware/qcom/display-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_display.git -b lineage-15.1-caf-8996 hardware/qcom/display-caf/msm8937
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b lineage-15.1-caf-8996 hardware/qcom/media-caf/msm8996
git clone https://github.com/TeamReloaded/hardware_qcom_media.git -b lineage-15.1-caf-8996 hardware/qcom/media-caf/msm8937
echo -e "${CLR_BLD_PPL}Sync Complete...${CLR_RST}"
echo -e ""
echo -e ""
echo -e "${CLR_BLD_PPL}Now You are good to Go${CLR_RST}"
echo -e ""
echo -e ""
