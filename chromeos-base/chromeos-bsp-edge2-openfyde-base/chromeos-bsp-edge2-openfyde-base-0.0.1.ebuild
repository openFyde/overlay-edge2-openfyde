# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="7"

inherit udev user

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Fyde"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="chromeos-base/chromeos/base"

RDEPEND="
    sys-kernel/armbian-firmware
    sys-boot/edge2-loaders
    chromeos-base/os_install_service
    chromeos-base/fake-camera-config
    chromeos-base/chromeos-bsp-inaugural
"

DEPEND="${RDEPEND}"

S="${FILESDIR}"

src_install() {
    #brcm bluetooth
    dosym "/lib/firmware" "/etc/firmware"
    insinto "/etc/init"
    doins *.override
    doins khadas-bluetooth.conf

   exeinto "/usr/sbin"
   doexe scripts/*

   insinto /lib/udev/rules.d
   doins udev/*

   insinto /usr/share/alsa/ucm
   doins -r rockchip,es8316-codec
   doins -r rk-es8316-spk-sound
}
