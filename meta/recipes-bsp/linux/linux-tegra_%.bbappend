FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-dione640.patch"
SRC_URI += "file://0002-dione_ir.cfg"
SRC_URI += "file://0004-dione1280-driver-added.patch"
SRC_URI += "file://0005-dione640-new-I2C-model.patch"
SRC_URI += "file://0006-dione640-i2c-check.patch"
SRC_URI += "file://0007-fdt-overlay.patch"
SRC_URI += "file://0008-common-dione_ir-driver-added.patch"
SRC_URI += "file://0009-detect_dione640-added.patch"
SRC_URI += "file://0010-dione_ir-supports-both-sensors.patch"
SRC_URI += "file://0011-dione_ir-refactored.patch"
SRC_URI += "file://0012-quick_mode-added.patch"
SRC_URI += "file://0013-test_mode.patch"
SRC_URI += "file://0014-reset_gpio-inverted.patch"
SRC_URI += "file://0015-reva-board.patch"
