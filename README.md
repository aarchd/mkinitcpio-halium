# mkinitcpio-halium

### WIP

**mkinitcpio-halium** is essentially a port of [initramfs-tools-halium](https://github.com/droidian/initramfs-tools-halium) tailored for **mkinitcpio**.

During the porting process, I removed some code, so this is **not** a direct 1:1 port.

## Features Removed
Yes you read that correct :P
- Support for recovery flashable rootfs images
- Support for recovery images (temporary)
- Support for legacy devices
- Support for encrypted rootfs (temporary)
- Some legacy Halium and UBTouch specific code

## TODO
- Support for offline charging
- Reintroduce support for encrypted rootfs
- Reintroduce support for recovery images

## Usage and Installation

You need to add some parameters to your kernel cmdline:  

1. `rw` — we need root read/write access; our hook is designed that way [**required**]  
2. `rd.log=kmsg` — our hook logs to kmsg, but the rest of initramfs does not; include this if you want to see the logs [**optional**]]

To install on an Arch Linux system running aarch64 (whether in a container, chroot, or a standard environment), simply run:

```bash
sudo make install
```

After installation, use the `aarchd-mkinitfs` script to generate the initramfs.

For more details on how the script works, you can review the [aarchd-mkinitfs](aarchd-mkinitfs).
