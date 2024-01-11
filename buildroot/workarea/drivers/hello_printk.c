#include <linux/kernel.h>
#include <linux/module.h>
//#include <linux/device.h>
//#include <linux/platform_device.h>
//#include <linux/of.h>
//#include <linux/of_device.h>
//#include <linux/clk.h>

//#include <linux/kdev_t.h>
//#include <linux/fs.h>
//#include <linux/cdev.h>
//#include <linux/uaccess.h>
//#include <asm/ioctl.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alex Mangushev <mangushev2001@yandex.ru>>");

static int __init hello_init(void) {
   printk("Hello, world!\n");
   return 0;
}

static void __exit hello_exit(void) {
   printk("Goodbye, world!\n");
}

module_init(hello_init);
module_exit(hello_exit);
