FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-dione640.patch"
SRC_URI += "file://0002-dione640_1280.cfg"
SRC_URI += "file://0004-dione1280-driver-added.patch"
SRC_URI += "file://0005-dione640-new-I2C-model.patch"
