# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Web Client for Jellyfin"
HOMEPAGE="https://github.com/jellyfin/jellyfin-web"
SRC_URI="
	https://repo.jellyfin.org/files/server/linux/latest-stable/amd64/jellyfin_${PV}-amd64.tar.gz
"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	app-arch/unzip
"

RDEPEND="
	!media-video/jellyfin-web-jmp-bin
"

S="${WORKDIR}/jellyfin"

src_install() {
	insinto /usr/share/jellyfinmediaplayer/web-client/desktop
	doins -r .
}
