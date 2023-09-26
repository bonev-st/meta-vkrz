COMPATIBLE_MACHINE_vkrzv2l = "vkrzv2l"
COMPATIBLE_MACHINE_vkrzg2l = "vkrzg2l"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_vkrzv2l = "\
    file://0001-add-vekatech-vkrzv2l-board-support.patch \
"

SRC_URI_append_vkrzg2l = "\
	file://0001-add-vekatech-vkrzg2l-board-support.patch \
"

PLATFORM_vkrzv2l = "v2l"
EXTRA_FLAGS_vkrzv2l = "BOARD=vkrzv2l"
FLASH_ADDRESS_BL2_BP_vkrzv2l = "00000"
FLASH_ADDRESS_FIP_vkrzv2l = "1D200"

PLATFORM_vkrzg2l = "g2l"
EXTRA_FLAGS_vkrzg2l = "BOARD=vkrzg2l"
FLASH_ADDRESS_BL2_BP_vkrzg2l = "00000"
FLASH_ADDRESS_FIP_vkrzg2l = "1D200"
