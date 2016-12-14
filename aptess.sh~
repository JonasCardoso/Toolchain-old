#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM Linux Kernels
# Linaro GCC Toolchains Branch

clear
echo
echo "-APTESS - Toolchain Choice-"
echo
echo "1) GCC 4.6.2 toolchain from Linaro"
echo "2) GCC 4.7.3 toolchain from Linaro"
echo
echo "*) Any other key to Exit"
echo
unset errortoolchain
read -p "Choice: " -n 1 -s x
_CROSS_COMPILE=$CROSS_COMPILE
unset CROSS_COMPILE
case "$x" in
	1 ) export CROSS_COMPILE="$(pwd)/../Toolchain/arm-eabi-linaro-4.6.2/bin/arm-eabi-"; ToolchainCompile="Linaro GCC 4.6.2";;
	2 ) export CROSS_COMPILE="$(pwd)/../Toolchain/arm-eabi-linaro-4.7.3/bin/arm-eabi-"; ToolchainCompile="Linaro GCC 4.7.3";;
	* ) ;;
esac
if [ "$CROSS_COMPILE" == "" ]
then
	CROSS_COMPILE=$_CROSS_COMPILE
	unset _CROSS_COMPILE
else
	echo $ToolchainCompile
fi
