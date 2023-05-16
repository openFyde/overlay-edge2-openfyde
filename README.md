# overlay-edge2-openfyde

![Logo badge](https://img.shields.io/endpoint?url=https%3A%2F%2Fopenfyde-badge-wivuxrq8xzvh.runkit.sh%2F) ![Release badge](https://img.shields.io/github/v/release/openFyde/overlay-edge2-openfyde?label=latest%20release%20image)


<br>

## Introduction
Same as Chromium OS, openFyde adopts the [Portage build and packaging system](https://wiki.gentoo.org/wiki/Portage) from Gentoo Linux. openFyde uses Portage with certain customisations to support building multiple targets (bootable OS system images) across different hardware architectures from a shared set of sources.

A **board** defines a target type, it can be either for a family of hardware devices or specifically for one type of device. For example, The board `amd64-openfyde` is a target type for an openFyde system image that aims to run on most recent PCs with amd64(x86_64) architecture; whilst the `rpi4-openfyde` board is a target type specifically for the infamous single-board computer [Raspberry Pi 4B](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/). We usually append `-openfyde` to the board name in openFyde to differentiate between its siblings for FydeOS.

Each board has a corresponding **overlay** that defines the configuration for it. This includes details like CPU architecture, kernel configuration, as well as additional packages and USE flags.

<br>

## Use tips

### Fan controls
We provide same script named fan.sh as [official one](https://docs.khadas.com/products/sbc/edge2/add-ons/cooling-fan).


### Device overlays
Instead of `/boot/dtb/rockchip/rk3588s-khadas-edge2.dtb.overlay.env`, openfyde uses Env.txt under `/mnt/stateful_partition/fyde/`.

For details, please refer to the [FAQ](https://fydeos.io/docs/knowledge-base/recipes/RK3588-soc-how-to-use-device-tree-overlay/).

Take [TS050 Touchscreen](https://docs.khadas.com/products/sbc/edge2/add-ons/ts050-touchscreen) as sample, you need add `mipi-panel` to node `overlays=` not `fdt_overlays`.

```
cat /mnt/stateful_partition/fyde/Env.txt
overlays=mipi-panel
```
<br>

## About this repository
This repository is the overlay for the `edge2-openfyde` board, it's part of the openFyde open-source project.

This repository contains the following packages:


| Packages                   | Description        | Reference                                                                              |
|----------------------------|--------------------|----------------------------------------------------------------------------------------|
| chromeos-base/device-appid | Setup device appid |                                                                                        |
| metadata/layout.conf       | inheritance        | [overlay-edge2-openfyde-base](https://github.com/openFyde/overlay-edge2-openfyde-base) |

<br>


## About the board `edge2-openfyde`
 - This board specifically targets the [khadas edge 2](https://www.khadas.com/edge2):

    ![khadas edge 2](https://static.wixstatic.com/media/04d639_4bb7375e2d8f4474b8d371f50948c4f0~mv2.png/v1/fill/w_1665,h_2278,al_c,q_95,enc_auto/Edge2_Interface.png)

<br>

###### Copyright (c) 2023 Fyde Innovations and the openFyde Authors. Distributed under the license specified in the root directory of this repository.
