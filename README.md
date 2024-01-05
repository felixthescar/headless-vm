# Headless VM on debian based distributons
# Work in progress

This script uses many bash commands to make the process of building virtual machines (VMs) quick and simple, eliminating the hassle of starting from scratch.

**Dependencies**:
- Nothing.

The entire functionality of this script is written using Bash only.

## How to use
1. Clone the project or download the archive and unpack it into a directory.
1. sudo chmod +x script.sh
1. Execute the script with ./script.sh

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

## Explanation of the files
### script.sh
Uses the other files to establish variable names and coordinates the entire process. It contains the virt-install command to create the virtual machine.
### machine-config.sh
The only script you should need to alter in order to have a bespoke headless virtual machine is this one, which is the VM configuration that causes the scripts to run. Please exercise caution while editing it as it uses bash variables.
### host-config.sh
This script installs the necessary software, creates the directories, downloads the ISO file, and grants the necessary permissions to the directories that are in use. If you encounter any difficulties downloading the required software, you may want to try updating your system first.
### distribution-list.sh
This script is only a list of tested images and distributions.
In order to select the desired distribution you must set it in the **machine-config** script as following:
>ISO_FILE=$UbuntuISO
>OS_NAME=Ubuntu

You can help expand this list and test the script as you please.