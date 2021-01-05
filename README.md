# learning-kubernetes

## Environment
- Ubuntu 20.04 LTS
- Intel Xeon E5-2620 v4 (16 cores)
- 64GB RAM

## Setup virtual environment for k8s

### 1. Install KVM Packages

```bash
sudo apt update
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
```

### 2. Authorize users
```bash
sudo adduser ‘username’ libvirt
sudo adduser ‘[username]’ kvm
```

### 3. Verify the installation
```bash
virsh list --all
sudo systemctl status libvirtd
```
- if the daemon is not active: `sudo systemctl enable --now libvirtd`

### 4. Create VM
- Install virt-manager
```bash
sudo apt install virt-manager
```

- Download CentOS image
```bash
cd /var/lib/libvirt/images
curl -O http://ftp.kaist.ac.kr/CentOS/7.9.2009/isos/x86_64/CentOS-7-x86_64-Minimal-2009.iso
```

- Start virt-manager GUI
```bash
sudo virt-manager
```

- Files - New Virtual Machine - Local install media
- Browse - Select a downloaded image
- Choose memory and cpu -> must be larger than 2GB/2 cores
- Check `Create a disk image..` and set the disk volume (100GB)
- Name: `k8s-master`, Set the network to `enpXXX-macvtap`

```bash

```