#!/bin/bash 

export INSTALL_MOD_PATH=$PWD/modules

#make distclean
make imx_v7_defconfig
make imx6q-supcore.dtb
make imx6dl-supcore.dtb
make zImage modules -j8
make modules_install
