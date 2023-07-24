FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

#SRCREV = "${AUTOREV}"
SRCREV = "ebb194954cad2170f72fb996816e9ca8451fbc28"

SRC_URI += "file://0001-add-vekatech-vkrzv2l-board-support.patch \
			file://0002-add-extrabootargs-to-bootargs.patch \
			file://0003-fix-override-of-mdio-bus-of-eth1-from-eth2.patch \
			file://0004-Use-SPI-Flash-for-ENV-save.patch \
			"

