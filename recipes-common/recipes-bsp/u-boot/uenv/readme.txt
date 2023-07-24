# How to configure the environment variables in uEnv.txt

It is possible to set an environment variable in uEnv.txt. To load the devicetree overlay file from
"overlay/" folder, you should set "enable_overlay_" or "fdt_extra_overlays". Also you can set some 
environment variables from uboot to overwrite the old settings.

Refer to the following description for different boards.


## For Rzboard U-Boot Env
/-----------------------|--------------|------------------------------
|       Config          | Value if set |     To be loading
|-----------------------|--------------|------------------------------
| enable_overlay_disp   |  'hdmi'      |  vkrzv2l-hdmi.dtbo
|                       |  'mipi'      |  vkrzv2l-mipi.dtbo
|-----------------------|--------------|------------------------------
| enable_overlay_camera |  'imx219'    |  vkrzv2l-imx219.dtbo
|---------------------------------------------------------------------
| fdtfile              : is a base dtb file, should be set vkrzv2l.dtb
|---------------------------------------------------------------------
| fdt_extra_overlays   : other dtbo files to be loading, such as vkrzv2l-f1.dtbo vkrzv2l-f2.dtbo
|---------------------------------------------------------------------
| extrabootargs		   : append extra arguments to linux boot cmdline
|---------------------------------------------------------------------
| ethaddr			   : ETH0 MAC address
|---------------------------------------------------------------------
| eth1addr			   : ETH1 MAC address
|---------------------------------------------------------------------
|---------------------------------------------------------------------
|  uboot env   : you could set some environment variables of u-boot here, such as 'console=' 'bootargs=' 
\---------------------------------------------------------------------
default setting:
	fdtfile=vkrzv2l.dtb

	#fdt_extra_overlays=1.dtbo 2.dtbo 3.dtbo
	fdt_extra_overlays=vkrzv2l-mipi.dtbo

	#ethaddr=aa:bb:cc:aa:bb:cc
	#eth1addr=aa:bb:cc:aa:bb:cd

	extrabootargs=video=HDMI-A-1:1024x768@60.00

