#!/bin/bash

cd /tmp
yum -y install wget
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.6.9.tar.xz

unxz -v linux-5.6.9.tar.xz
tar xvf linux-5.6.9.tar

cd linux-5.6.9

yum group install "Development Tools" -y
yum -y install ncurses-devel bison flex elfutils-libelf-devel openssl-devel bc

cp /boot/config* .config
yes "" | make oldconfig
make -j 2
make modules_install
make install

grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-set-default 0
echo -e "\e[32mGrub update done.\e[0m"

# Reboot VM
shutdown -r now
