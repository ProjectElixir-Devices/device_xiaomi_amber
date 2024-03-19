echo 'Starting to clone stuffs needed for amber'

echo 'Cloning amber Vendor tree [1/5]'
# Device Vendor Tree
rm -rf vendor/xiaomi/amber
git clone --depth=1 https://github.com/mt6893-amber/android_vendor_xiaomi_amber.git -b fourteen-miui vendor/xiaomi/amber

echo 'Cloning Kernel tree [2/5]'
# Kernel Tree
rm -rf device/xiaomi/amber-kernel
git clone --depth=1 https://github.com/mt6893-amber/android_kernel_xiaomi_amber-prebuilt.git -b V14.0.6.0.TKWMIXM device/xiaomi/amber-kernel

echo 'Cloning Hardware xiaomi [3/5]'
# Hardware xiaomi
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/xiaomi-mediatek-devs/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi

echo 'Cloning Hardware mediatek [4/5]'
# Hardware mediatek
rm -rf hardware/mediatek
git clone --depth=1 https://github.com/xiaomi-mediatek-devs/android_hardware_mediatek.git -b lineage-21 hardware/mediatek

echo 'Cloning mediatek sepolicy_vndr [5/5]'
# Mediatek sepolicy_vndr
rm -rf device/mediatek
git clone --depth=1 https://github.com/xiaomi-mediatek-devs/android_device_mediatek_sepolicy_vndr.git -b lineage-21 device/mediatek/sepolicy_vndr

echo 'Completed, Now proceeding to lunch'
