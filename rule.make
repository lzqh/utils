#boot_logo/ rule for makefile

CMD = $(shell pwd)

#Points to the root of the boot_logo
export boot_logo_dir=$(CMD)
#point to uboot/driver/lcd
export uboot_drv_lcd_dir=$(boot_logo_dir)/../sdk-am335x-evm-05.06.00.00/board-support/u-boot-2012.10-psp05.06.00.00/drivers/lcd
#point to linux/driver/video/logo
export linux_drv_logo=$(boot_logo_dir)/../sdk-am335x-evm-05.06.00.00/board-support/linux-3.2.0-psp05.06.00.00/drivers/video/logo
