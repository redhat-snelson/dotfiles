#!/bin/bash
set -o xtrace

declare -r mountpoint=${1}

cp $(which qemu-aarch64-static) ${mountpoint}/usr/bin
cp $(which qemu-arm-static) ${mountpoint}/usr/bin
#cp /etc/resolv.conf ${mountpoint}/etc/resolv.conf

mount -o bind /proc ${mountpoint}/proc
mount -o bind /sys ${mountpoint}/sys
mount -o bind /dev ${mountpoint}/dev
mount -o bind /dev/pts ${mountpoint}/dev/pts

chroot ${mountpoint} /bin/bash

umount ${mountpoint}/dev/pts
umount ${mountpoint}/dev
umount ${mountpoint}/sys
umount ${mountpoint}/proc

rm ${mountpoint}/usr/bin/qemu-aarch64-static
rm ${mountpoint}/usr/bin/qemu-arm-static

