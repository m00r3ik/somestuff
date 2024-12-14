# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# File was automatically generated by automatic-ebuild-maker
# https://github.com/BlueManCZ/automatic-ebuild-maker

EAPI=7
inherit unpacker xdg

DESCRIPTION="Flash OS images to SD cards and USB drives, safely and easily."
HOMEPAGE="https://github.com/balena-io/etcher"
SRC_URI="https://github.com/balena-io/etcher/releases/download/v${PV}/balena-etcher_${PV}_amd64.deb -> ${P}.deb"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="-* ~amd64"
RESTRICT="bindist mirror"
IUSE="alsa doc libnotify"

RDEPEND="app-accessibility/at-spi2-core
	dev-libs/atk
	dev-libs/glib:2
	dev-libs/nss
	gnome-base/gnome-keyring
	media-libs/fontconfig
	media-libs/freetype
	media-libs/mesa
	net-print/cups
	sys-apps/dbus
	sys-devel/gcc
	sys-libs/glibc
	sys-libs/libstdc++-v3
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/gtk+:3
	x11-libs/libX11
	x11-libs/libXScrnSaver
	x11-libs/libXcursor
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXi
	x11-libs/libXrender
	x11-libs/libXtst
	x11-libs/libdrm
	x11-libs/libxcb
	x11-misc/xdg-utils
	alsa? ( media-libs/alsa-lib )
	libnotify? ( x11-libs/libnotify )"

QA_PREBUILT="*"

S=${WORKDIR}

src_install() {
	cp -a . "${ED}" || die "cp failed"

	rm -r "${ED}/usr/share/doc/balena-etcher" || die "rm failed"

	if use doc ; then
		dodoc -r "usr/share/doc/balena-etcher/"* || die "dodoc failed"
	fi
}