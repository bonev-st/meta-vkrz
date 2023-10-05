COMPATIBLE_MACHINE_vkrzv2l = "vkrzv2l"
COMPATIBLE_MACHINE_vkrzg2l = "vkrzg2l"
COMPATIBLE_MACHINE_vkrzg2lc = "vkrzg2lc"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRCREV = "ebb194954cad2170f72fb996816e9ca8451fbc28"

SRC_URI_append_vkrzv2l += "	\
	file://0001-add-vekatech-vkrzv2l-board-support.patch \
"

SRC_URI_append_vkrzg2l += "	\
	file://0001-add-vekatech-vkrzg2l-board-support.patch \
"

SRC_URI_append_vkrzg2lc += "	\
	file://0001-add-vekatech-vkrzg2lc-board-support.patch \
"

SRC_URI += " \
	file://0002-realtek-phy-disable-lp.patch \
	file://0003-fix-override-of-mdio-bus-of-eth1-from-eth2.patch \
"
