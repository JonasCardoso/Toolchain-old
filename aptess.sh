#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM Linux Kernels
# Linaro GCC Toolchains Branch

clear
echo
echo "-APTESS - Toolchain Choice-"
echo
echo "${bldred}-GCC Google-${txtrst}"
echo
echo "1) GCC 4.6.0 toolchain from Google"
echo "2) GCC 4.8.0 toolchain from Google"
echo
echo "${bldgrn}-GCC Linaro-${txtrst}"
echo
echo "3) GCC 4.8.4 (2014.11) toolchain from Linaro"
echo "4) GCC 4.9.4 (2015.06) toolchain from Linaro"
echo
echo "${bldblu}-GCC UBERTC-${txtrst}"
echo
echo "5) GCC 4.8.5 (2016.04) toolchain from UBERTC"
echo "6) GCC 4.9.4 (2016.04) toolchain from UBERTC"
echo
echo "*) Any other key to Exit"
echo
unset errortoolchain
read -p "Choice: " -n 1 -s x
_CROSS_COMPILE=$CROSS_COMPILE
unset CROSS_COMPILE
case "$x" in

	1 ) export CROSS_COMPILE="$(pwd)/../Toolchain/google_gcc/arm-eabi-4.6.0/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.6.0";;

	2 ) export CROSS_COMPILE="$(pwd)/../Toolchain/google_gcc/arm-eabi-4.8.0/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.8.0";;

	3 ) export CROSS_COMPILE="$(pwd)/../Toolchain/linaro_gcc/arm-linux-gnueabi-linaro_4.8.4/bin/arm-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.8.4";;

	4 ) export CROSS_COMPILE="$(pwd)/../Toolchain/linaro_gcc/arm-cortex-linux-gnueabi-linaro_4.9.4/bin/arm-cortex-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.9.4";;

	5 ) export CROSS_COMPILE="$(pwd)/../Toolchain/ubertc_gcc/arm-eabi-4.8.5/bin/arm-eabi-"; ToolchainCompile="UBERTC GCC 4.8.5";;

	6 ) export CROSS_COMPILE="$(pwd)/../Toolchain/ubertc_gcc/arm-eabi-4.9.4/bin/arm-eabi-"; ToolchainCompile="UBERTC GCC 4.9.4";;
	* ) ;;

esac
if [ "$CROSS_COMPILE" == "" ]
then
	CROSS_COMPILE=$_CROSS_COMPILE
	unset _CROSS_COMPILE
else
	echo $ToolchainCompile
fi
