#!/bin/bash
sudo virt-install -n vds -r 256 \
--disk path=/home/vds.img,bus=virtio,size=4 -c \
jeos.iso --accelerate --network network=default,model=virtio \
--connect=qemu:///system --vnc --noautoconsole -v
