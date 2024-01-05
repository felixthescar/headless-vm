#!/bin/bash

#If the variables are not populated they will take a default value.

#For ISO Files and Os names check the variables inside distribution-list.sh

. $PWD/distribution-list.sh

VM_NAME=
MEMORY=
VCPUS=
DISK_SIZE=
VM_DIRECTORY=
ISO_FILE=
OS_NAME=
ISO_DIRECTORY=

if [ -z "$VM_NAME" ]; then
    VM_NAME=test-vm
fi
if [ -z "$MEMORY" ]; then
    MEMORY=2048
fi
if [ -z "$VCPUS" ]; then
    VCPUS=2
fi
if [ -z "$DISK_SIZE" ]; then
    DISK_SIZE=5
fi
if [ -z "$VM_DIRECTORY" ]; then
    VM_DIRECTORY=$HOME/virtual_disks
fi
if [ -z "$ISO_FILE" ]; then
    ISO_FILE=$UbuntuISO
fi
if [ -z "$OS_NAME" ]; then
    OS_NAME=$Ubuntu
fi
if [ -z "$ISO_DIRECTORY" ]; then
    ISO_DIRECTORY=$HOME/iso-files
fi

ISO=$ISO_DIRECTORY/$OS_NAME