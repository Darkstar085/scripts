cd ~
mkdir aosip
cd aosip


repo init -u git://github.com/AOSiP/platform_manifest.git -b oreo-mr1
repo sync -f --force-sync --no-tags --no-clone-bundle


git clone https://github.com/Sweeto143/android_device_xiaomi_land-aosip.git -b oreo-mr1 device/xiaomi/land
git clone https://github.com/Sweeto143/android_kernel_xiaomi_land.git -b oreo-mr1 kernel/xiaomi/msm8937
git clone https://github.com/Sweeto143/proprietary_vendor_xiaomi_land.git -b oreo vendor/xiaomi


