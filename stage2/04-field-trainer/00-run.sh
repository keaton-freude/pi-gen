#!/bin/bash -e

install -m 644 files/wpa_supplicant.conf "${ROOTFS_DIR}/etc/wpa_supplicant"

wget https://nodejs.org/dist/v8.16.0/node-v8.16.0-linux-armv6l.tar.gz
tar xf node-v8.16.0-linux-armv6l.tar.gz
pushd .
sudo chmod -R 755 ./node-v8.16.0-linux-armv6l
cd node-v8.16.0-linux-armv6l/ && cp -R * "${ROOTFS_DIR}/usr/local"


