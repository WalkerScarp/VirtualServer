#!/bin/bash
      installpack="kvm libvirt-bin virtinst sudo"
dpkg --add-architecture i386
apt-get update
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
