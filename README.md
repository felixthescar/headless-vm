# Headless VM on debian based distributons

This is a script to remove the hustle of making VMs from scratch.
It incorporates different bash commands in order to make creating VMs easy and fast.

**Dependencies**:
- Nothing.

The entire functionality of this script is written using Bash only.

## Workflow
There is a list of ISOs tested in the file **distribution-list**. If you wish to expand to that feel free to do so.
Configuring the VM is done using the **machine-config** file. There is a set of predefined values such as: 

- VM_NAME: test-vm;
- MEMORY: 2048MB;
- VCPUS: 2;
- DISK_SIZE=5;
- VM_DIRECTORY=$HOME/virtual_disks;
- ISO_FILE=UbuntuServer23.04;
- ISO_DIRECTORY=$HOME/iso-files.

Note that the default directories are created automaticly and assigned the necessary permisions.

## How to use
1. Clone the project or download the archive and unpack it into a directory.
1. sudo chmod +x script.sh
1. Execute the script with ./script.sh

If you encounter an error regarding the download of the software necessary try updating your system first.