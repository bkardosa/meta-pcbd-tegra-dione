FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-unified-dione_ir-driver.patch"
SRC_URI += "file://0002-dione_ir.cfg"
SRC_URI += "file://0003-usb_g_serial.cfg"
