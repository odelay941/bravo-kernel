#!/bin/sh
# Very simple build script



make ARCH=arm CROSS_COMPILE=$CCOMPILER clean
make ARCH=arm CROSS_COMPILE=$CCOMPILER defconfig bravo_defconfig
make ARCH=arm CROSS_COMPILE=$CCOMPILER menuconfig
make ARCH=arm CROSS_COMPILE=$CCOMPILER -j4 EXTRA_AFLAGS='-mfpu=neon -mfloat-abi=softfp -ftree-vectorize'
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/2.6.35-odelay_bravo-kernel.zip

make ARCH=arm CROSS_COMPILE=$CCOMPILER clean
make ARCH=arm CROSS_COMPILE=$CCOMPILER mrproper

rm ZipBuilder/update_signed.zip
rm ZipBuilder/update.zip
rm ZipBuilder/kernel/zImage
rm -r ZipBuilder/system/lib/modules/*




