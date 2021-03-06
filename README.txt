    Building

    Follow https://developer.ridgerun.com/wiki/index.php?title=Yocto_Support_for_NVIDIA_Jetson_Platforms_-_Setting_up_Yocto
      up to and including "$ source poky-${BRANCH}/oe-init-build-env build"
    Summary of the steps in the above document:
      $ export BRANCH="dunfell"
      $ git clone -b ${BRANCH} git://git.yoctoproject.org/poky.git poky-${BRANCH}
      $ git clone -b ${BRANCH}-l4t-r32.5.0 https://github.com/madisongh/meta-tegra.git
      $ source poky-${BRANCH}/oe-init-build-env build

    Now execute these additional steps:
      $ cd ../
      $ git clone git://git.openembedded.org/meta-openembedded -b dunfell
      $ git clone https://redmine.pcbdesign.hu/git/sw236 -b dev-dione_ir-common meta-pcbd-tegra
      $ cp meta-pcbd-tegra/local.conf.sample build/conf/local.conf
      $ cd build/
      $ bitbake-layers add-layer ../meta-tegra/
      $ bitbake-layers add-layer ../meta-openembedded/meta-oe/
      $ bitbake-layers add-layer ../meta-pcbd-tegra/meta/
      $ bitbake-layers add-layer ../meta-openembedded/meta-python/
      $ bitbake core-image-weston

    Fixing (eventual) libglvnd download issue:
      $ git -c core.fsyncobjectfiles=0 clone --bare --mirror "https://gitlab.freedesktop.org/glvnd/libglvnd.git" gitlab.freedesktop.org.glvnd.libglvnd.git --progress
      $ mv gitlab.freedesktop.org.glvnd.libglvnd.git downloads/git2/

    When build has finished create SD-card image:
      $ cd tmp/deploy/images/jetson-nano-2gb-devkit
      $ mkdir tmp
      $ cd tmp
      $ tar -vxf ../core-image-weston-jetson-nano-2gb-devkit.tegraflash.tar.gz
      $ ./dosdcard.sh core-image-weston.img
    core-image-weston.img uSD card image will be cretaed.

    Updating SPI flash of Jetson Nano:
    - boot up Jetson Nano in recovery mode
    - then in the same folder:
      $ sudo ./doflash.sh --spi-only

    Updating DTB only:
      $ cd .../build/tmp/work-shared/L4T-tegra210-32.5.2-r0/Linux_for_Tegra
      $ cp ../../../deploy/images/jetson-nano-2gb-devkit/tegra210-p3448-0003-p3542-0000.dtb .
      $ sudo ./flash.sh -k DTB -d tegra210-p3448-0003-p3542-0000.dtb jetson-nano-2gb-devkit mmcblk0p1


