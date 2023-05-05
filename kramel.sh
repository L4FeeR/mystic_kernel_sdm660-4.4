clear
mkdir -p out

#Exports

export ARCH=arm64
export SUBARCH=arm64
export CC=clang
export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export KBUILD_BUILD_USER=L4FeeR
export KBUILD_BUILD_HOST=Linux

#Building config

make CC=clang O=out CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- mystic-tulip-qtihaptics_defconfig
echo
echo

#Menuconfig

make CC=clang O=out CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- menuconfig
echo
echo

#Build

echo "make CC=clang O=out CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- -j8"
echo ""
echo ""

