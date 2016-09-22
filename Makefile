-include rule.make
.PHONY : ctbox_sv ctbox_su dispaly_sv dispaly_su
#############ctbox_sv#########
ctbox_sv : uboot_ctbox_sv kernel_ctbox_sv appl_ctbox_sv
uboot_ctbox_sv :
	cd  $(boot_logo_dir)/bmpToRaster/ && $(MAKE);./a.out 800 1280 ./boot-logo-uboot-ctbox-sv.bmp ./image-ctbox-sv.h 24 RGB h;cp -r -f image-ctbox-sv.h $(uboot_drv_lcd_dir)
	
kernel_ctbox_sv :
	cd  $(boot_logo_dir)/script;./makeimage-kernel.sh logo_sv_ctbox_clut224.jpg logo_sv_ctbox_clut224.ppm;\cp -r -f logo_sv_ctbox_clut224.ppm $(linux_drv_logo)
	
appl_ctbox_sv :
	cd $(boot_logo_dir)/psplash;./build.sh sv-ctbox
	
	
##############ctbox_su#########
ctbox_su : uboot_ctbox_su kernel_ctbox_su appl_ctbox_su
uboot_ctbox_su :
	cd  $(boot_logo_dir)/bmpToRaster/ && $(MAKE);./a.out 800 1280 ./boot-logo-uboot-ctbox-su.bmp ./image-ctbox-su.h 24 RGB h;cp -r -f image-ctbox-su.h $(uboot_drv_lcd_dir)
	
kernel_ctbox_su :
	cd  $(boot_logo_dir)/script;./makeimage-kernel.sh logo_su_ctbox_clut224.jpg logo_su_ctbox_clut224.ppm;\cp -r -f logo_su_ctbox_clut224.ppm $(linux_drv_logo)
	
appl_ctbox_su :
	cd $(boot_logo_dir)/psplash;./build.sh su-ctbox
	
	
################dispaly_sv########
dispaly_sv : uboot_dispaly_sv kernel_dispaly_sv appl_dispaly_sv
uboot_dispaly_sv :
	cd  $(boot_logo_dir)/bmpToRaster/ && $(MAKE);./a.out 800 1280 ./boot-logo-uboot-dispaly-sv.bmp ./image-dispaly-sv.h 24 RGB h;cp -r -f image-dispaly-sv.h $(uboot_drv_lcd_dir)
	
kernel_dispaly_sv :
	cd  $(boot_logo_dir)/script;./makeimage-kernel.sh logo_sv_dispaly_clut224.jpg logo_sv_dispaly_clut224.ppm;\cp -r -f logo_sv_dispaly_clut224.ppm $(linux_drv_logo)
	
appl_dispaly_sv :
	cd $(boot_logo_dir)/psplash;./build.sh sv-dispaly
	
################dispaly_su##########
dispaly_su : uboot_dispaly_su kernel_dispaly_su appl_dispaly_su
uboot_dispaly_su :
	cd  $(boot_logo_dir)/bmpToRaster/ && $(MAKE);./a.out 800 1280 ./boot-logo-uboot-dispaly-su.bmp ./image-dispaly-su.h 24 RGB h;cp -r -f image-dispaly-su.h $(uboot_drv_lcd_dir)
	
kernel_dispaly_su :
	cd  $(boot_logo_dir)/script;./makeimage-kernel.sh logo_su_dispaly_clut224.jpg logo_su_dispaly_clut224.ppm;\cp -r -f logo_su_dispaly_clut224.ppm $(linux_drv_logo)
	
appl_dispaly_su :
	cd $(boot_logo_dir)/psplash;./build.sh su-dispaly

	
	
	
	
	
