#!/bin/bash

. $PWD/machine-config.sh

sudo apt install --no-install-recommends qemu-system libvirt-clients libvirt-daemon-system -y
sudo apt install ovmf qemu-utils virtinst dnsmasq -y

GROUP=libvirt

if id -nG "$USER" | grep -qw "$GROUP"; then
    echo $USER belongs to $GROUP, skipping.
else
    sudo adduser $USER libvirt
fi

if [ `systemctl is-enabled libvirtd` ==  enabled ]; then
        echo Libvirtd enabled, skipping.
else
        sudo systemctl enable libvirtd
        sudo systemctl start libvirtd
fi

if sudo virsh net-list | grep -q 'active'; then
        echo Default network active, skipping.    
else
        sudo virsh --connect=qemu:///system net-autostart default
        sudo virsh --connect=qemu:///system net-start default
fi

setfacl -m user:libvirt-qemu:--x $HOME
setfacl -m user:libvirt-qemu:--x $VM_DIRECTORY

if [ ! -f $ISO ]; then
    curl -o $ISO $ISO_FILE
fi