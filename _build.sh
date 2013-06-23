
export TCHAIN=../../../prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-

make ARCH=arm clean
make ARCH=arm CROSS_COMPILE=$TCHAIN fusion3_yuga_defconfig
make ARCH=arm CROSS_COMPILE=$TCHAIN -j 8

cp arch/arm/boot/zImage ../../../device/sony/c6603/kernel 
# overwrite wlan driver of sony
cp ./drivers/staging/prima/wlan.ko  ../../../vendor/sony/c6603/proprietary/lib/modules/wlan.ko

