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
display_sv : uboot_display_sv kernel_display_sv appl_display_sv
uboot_display_sv :
	cd  $(boot_logo_dir)/bmpToRaster/ && $(MAKE);./a.out 1360 768 ./boot-logo-uboot-display-sv.bmp ./image-display-sv.h 24 RGB h;cp -r -f image-display-sv.h $(uboot_drv_lcd_dir)
	
kernel_display_sv :
	cd  $(boot_logo_dir)/script;./makeimage-kernel.sh logo_sv_display_clut224.jpg logo_sv_diisplay_clut224.ppm;\cp -r -f logo_sv_display_clut224.ppm $(linux_drv_logo)
	
appl_display_sv :
	cd $(boot_logo_dir)/psplash;./build.sh sv-display
	
################dispaly_su##########
display_su : uboot_display_su kernel_display_su appl_display_su
uboot_display_su :
	cd  $(boot_logo_dir)/bmpToRaster/ && $(MAKE);./a.out 1360 768 ./boot-logo-uboot-display-su.bmp ./image-display-su.h 24 RGB h;cp -r -f image-display-su.h $(uboot_drv_lcd_dir)
	
kernel_display_su :
	cd  $(boot_logo_dir)/script;./makeimage-kernel.sh logo_su_display_clut224.jpg logo_su_display_clut224.ppm;\cp -r -f logo_su_display_clut224.ppm $(linux_drv_logo)
	
appl_display_su :
	cd $(boot_logo_dir)/psplash;./build.sh su-dispaly

	
	
	
	
	
