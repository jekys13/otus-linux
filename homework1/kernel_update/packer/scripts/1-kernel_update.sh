#!/bin/bash

# Install elrepo
yum install -y http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm

echo -e "\e[32mElrepo enabled\e[0m"

# Install new kernel
yum --enablerepo elrepo-kernel install kernel-ml kernel-ml-headers kernel-ml-devel -y

echo -e "\e[32mKernel update finished\e[0m"

# Update GRUB
grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-set-default 0
echo -e "\e[32mGrub update done.\e[0m"

# Reboot VM
shutdown -r now
