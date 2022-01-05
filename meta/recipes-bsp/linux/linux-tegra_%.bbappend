FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-dione640.patch"
SRC_URI += "file://0002-dione640_1280.cfg"
SRC_URI += "file://0004-dione1280-driver-added.patch"
SRC_URI += "file://0005-dione640-new-I2C-model.patch"
SRC_URI += "file://0006-dione640-i2c-check.patch"
SRC_URI += "file://0007-fdt-overlay.patch"

