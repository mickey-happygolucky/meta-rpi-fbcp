This README file contains information on the contents of the
rpi-fbcp layer.

Please see the corresponding sections below for details.

Summary
=======

This layer support to use fbcp with yocto and raspberrypi.


Dependencies
============

This layer depends on:

```txt
  URI: git://git.yoctoproject.org/meta-raspberrypi
  branch: master

  URI: https://github.com/mickey-happygolucky/meta-pitft35-rpi.git
  branch: master
```

Patches
=======

Please submit any patches against the rpi-fbcp layer to 
the maintainer:

Maintainer: Yusuke MITSUKI <mickey.happygolucky@gmail.com>


Table of Contents
=================

  I. Adding the rpi-fbcp layer to your build
 II. Enable fbcp to your build


I. Adding the rpi-fbcp layer to your build
=================================================

In order to use this layer, you need to make the build system aware of
it.

Assuming the rpi-fbcp layer exists at the top-level of your
yocto build tree, you can add it to the build system by adding the
location of the rpi-fbcp layer to bblayers.conf, along with any
other layers needed. e.g.:

```txt
  BBLAYERS ?= " \
    /path/to/yocto/meta \
    /path/to/yocto/meta-poky \
    /path/to/yocto/meta-yocto-bsp \
    /path/to/yocto/meta-raspberrypi \
    /path/to/yocto/meta-pitft35-rpi \
    /path/to/yocto/meta-rpi-fbcp \
    "
```

II. Enable fbcp to your build
=============================

In order to enable fbcp, edit your local.conf and add the line as follows:

```txt
RPI_PITFT35_FBCP = "1"
KERNEL_DEVICETREE_append = " overlays/pitft35-resistive-overlay.dtb"
```

You should remove the `RPI_PITFT35 = "1"` line from your local.conf.
