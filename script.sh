#!/bin/bash

#This script creates a vm using virt-install and install the necessary dependencies.
#Tested from start to finish on GCE VM running Ubuntu 23.04 as a host. Different Host and Client configurations may result in errors.
#The entire user input should be done in the Variables part of this script for proper behavior but modify as you wish.
. $PWD/machine-config.sh
chmod +x $PWD/machine-config.sh
$PWD/machine-config.sh

chmod +x $PWD/host-config.sh
$PWD/host-config.sh

#====/Requirements====#

sudo virt-install \
        --virt-type qemu \
        --name ${VM_NAME} \
        --location ${ISO} \
        --disk ${VM_DIRECTORY}/${VM_NAME}.qcow2,size=${DISK_SIZE} \
        --memory ${MEMORY} \
        --graphics none \
        --console pty,target_type=serial \
        --extra-args "console=ttyS0" \
        --vcpus ${VCPUS} #\
#        --boot uefi \
#       --cpu host-passthrough,cache.mode=passthrough
