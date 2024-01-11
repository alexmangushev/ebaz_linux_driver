#!/bin/sh
#run after root (su)
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
make -C /home/alex/Xilinx/u-boot-xlnx \
    distclean
make -C /home/alex/Xilinx/u-boot-xlnx \
    xilinx_zynq_virt_defconfig
export DEVICE_TREE="ebaz" # Name of our dt file
cp /home/alex/Xilinx_prj/ebaz_linux/vitis_workspace/dt/ebaz.dtb \
    /home/alex/Xilinx/u-boot-xlnx/arch/arm/dts
make -C /home/alex/Xilinx/u-boot-xlnx \
    -j$(nproc)
