    Building

    Follow https://developer.ridgerun.com/wiki/index.php?title=Yocto_Support_for_NVIDIA_Jetson_Platforms_-_Setting_up_Yocto
      up to and including "$ source poky-${BRANCH}/oe-init-build-env build"

      $ cd ../
      $ git clone git://git.openembedded.org/meta-openembedded -b dunfell
      $ git clone <meta-pcbd-tegra>
      $ cp meta-pcbd-tegra/local.conf.sample build/conf/local.conf
      $ cd build/
      $ bitbake-layers add-layer ../meta-tegra/
      $ bitbake-layers add-layer ../meta-openembedded/meta-oe/
      $ bitbake-layers add-layer ../meta-pcbd-tegra/meta/
      $ bitbake core-image-weston


