SUMMARY = "Flash Writer for VKRZV2L board"

BOARD ?= ""
BOARD_vkrzv2l = "RZV2L_SMARC_PMIC"

do_compile_append_vkrzv2l() {
	mv ${S}/AArch64_output/Flash_Writer*${BOARD}*.mot ${S}/AArch64_output/Flash_Writer_SCIF_${MACHINE}.mot
}
