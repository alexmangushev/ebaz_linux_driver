
# Path to the Linux kernel
KDIR = /home/alex/Xilinx_prj/ebaz_linux/buildroot/build/linux-c8b3583bc86352009c6ac61e2ced0e12118f8ebb
TARGET = hello_printk
export CROSS_COMPILE := /home/alex/Xilinx_prj/ebaz_linux/buildroot/host/bin/arm-buildroot-linux-gnueabihf-
export ARCH := arm

obj-m := $(TARGET).o

all:
	make -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean
