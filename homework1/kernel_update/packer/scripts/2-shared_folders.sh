#!/bin/bash

yum install -y tar bzip2 gcc perl

mount -o loop VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

rm VBoxGuestAdditions.iso