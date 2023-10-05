SUMMARY = "Flash Writer for VKRZV2L/VKRZG2L board"

BOARD ?= ""
BOARD_vkrzv2l = "RZV2L_SMARC_PMIC"
BOARD_vkrzg2l = "RZG2L_SMARC_PMIC"
BOARD_vkrzg2lc = "RZG2LC_DEV"

do_compile_append() {
	mv ${S}/AArch64_output/Flash_Writer*${BOARD}*.mot ${S}/AArch64_output/Flash_Writer_SCIF_${MACHINE}.mot
}
