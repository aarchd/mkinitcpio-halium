# mkinitcpio-halium

### WIP

**mkinitcpio-halium** is essentially a port of [initramfs-tools-halium](https://github.com/droidian/initramfs-tools-halium) tailored for **mkinitcpio**.

During the porting process, I removed some code, so this is **not** a direct 1:1 port.

## Features Removed
Yes you read that correct :P
- Support for legacy devices
- Support for encrypted rootfs (temporary)
- Some legacy Halium and UBTouch specific code

## TODO
- ~~Support for offline charging~~ [DONE]
- Reintroduce support for rootfs encryption
- ~~Reintroduce support for recovery images~~ [DONE]

## Usage and Installation

To install on an Arch Linux system running aarch64 (whether in a container, chroot, or a standard environment), simply run:

```bash
sudo make install
```

After installation, use the `aarchd-mkinitfs` script to generate the initramfs.

For more details on how the script works, you can review the [aarchd-mkinitfs](aarchd-mkinitfs).
