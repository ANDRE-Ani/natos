#!/bin/bash

set -e

#Fix bash-minimal install like
mv /opt/lsb_release /usr/bin
mv /opt/lsb_release.py /usr/share/pyshared
cd /usr/lib/python2.7/dist-packages
ln -s ../../../share/pyshared/lsb_release.py ./
cd /usr/lib/python3/dist-packages
ln -s ../../../share/pyshared/lsb_release.py ./
lsb_release -i -s
update-grub
