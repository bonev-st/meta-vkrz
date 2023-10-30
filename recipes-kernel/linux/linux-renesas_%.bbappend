COMPATIBLE_MACHINE_vkrzv2l = "vkrzv2l"
COMPATIBLE_MACHINE_vkrzg2l = "vkrzg2l"
COMPATIBLE_MACHINE_vkrzg2lc = "vkrzg2lc"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_vkrzv2l = " \
	file://0002-add-vkrzv2l-dt-and-dt-overlay.patch \
	file://0004-fix-il9881c-diplay-flickering.patch \
	file://0005-add-lt8912b-diver.patch \
	file://0007-fix-communication-issues-with-lt8912b.patch \
	file://0011-fix-broken-ddc-channel.patch \
"

SRC_URI_append_vkrzg2l = " \
	file://0005-add-lt8912b-diver.patch \
	file://0002-add-vkrzg2l-dt-and-dt-overlay.patch \
	file://0007-fix-communication-issues-with-lt8912b.patch \
	file://0011-fix-broken-ddc-channel.patch \
"

SRC_URI_append_vkrzg2lc = " \
	file://0002-add-vkrzg2lc-dt-and-dt-overlay.patch \
"

SRC_URI += " \
	file://0001-add-dt-overlay-support.patch \
	file://0003-add-support-for-avnet-ph720128t005-display.patch \
	file://0006-add-1680x1050-146.25MHz-settings.patch \
	file://0009-fix-lan-leds.patch \
	file://0010-add-support-for-vklcd07.patch \
"

KBUILD_DEFCONFIG = "defconfig"
KCONFIG_MODE = "alldefconfig"

KBUILD_DEFCONFIG = "defconfig"

FILESEXTRAPATHS_prepend := "${THISDIR}/Kconfigs:"

SRC_URI += " \
	file://ADV7511.cfg \
	file://CANBUS.cfg \
	file://EEPROM_I2C.cfg \
	file://GT911.cfg \
	file://LONTIUM_LT8912B.cfg \
	file://NETWORK.cfg \
	file://PANEL_ILITEK_ILI9881C.cfg \
	file://PANEL_PANEL_FITIPOWER_EK79007AD.cfg \
	file://RTL8211F.cfg \
	file://SND_SOC_DA7213.cfg \
	file://UDMABUF.cfg \
	file://USB_GADGET.cfg \
"

# support to build dtbo
KERNEL_DTC_FLAGS = "-@"
KERNEL_DEVICETREE_OVERLAY ?= ""

do_compile_prepend() {
    if [ -n "${KERNEL_DTC_FLAGS}" ]; then
       export DTC_FLAGS="${KERNEL_DTC_FLAGS}"
    fi
}

do_compile_append() {
    for dtbf in ${KERNEL_DEVICETREE_OVERLAY}; do
        dtb=`normalize_dtb "$dtbf"`
        oe_runmake $dtb CC="${KERNEL_CC} $cc_extra " LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS}
    done
}

do_deploy_append(){
   install -d ${DEPLOYDIR}/overlays
   cp ${B}/arch/arm64/boot/dts/renesas/overlays/* ${DEPLOYDIR}/overlays
}
