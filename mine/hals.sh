# Copyright (C) 2018 Sipun Ku Mahanta<sipunkumar85@gmail.com>
# Copyright (C) 2018 Sweeto143@github / Darkstar085@XDA

rm -rf hardware/qcom/audio-caf
rm -rf hardware/qcom/media-caf
rm -rf hardware/qcom/display-caf
git clone https://github.com/Sweeto143/hardware_qcom_audio.git -b oreo hardware/qcom/audio-caf/msm8996
git clone https://github.com/Sweeto143/hardware_qcom_display.git -b oreo hardware/qcom/display-caf/msm8996
git clone https://github.com/Sweeto143/hardware_qcom_media.git -b oreo hardware/qcom/media-caf/msm8996
