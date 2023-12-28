# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

inherit udev user

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Fyde"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
    sys-kernel/armbian-firmware
    sys-boot/edge2-loaders
    chromeos-base/os_install_service
"

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
    #brcm bluetooth
    dosym "/lib/firmware" "/etc/firmware"
    insinto "/etc/init"
    doins ${FILESDIR}/*.conf

   exeinto "/usr/sbin"
   doexe ${FILESDIR}/scripts/*
}
