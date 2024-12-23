# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit linux-info

DESCRIPTION="Discord RPC"
HOMEPAGE="https://github.com/sammycage/lunasvg"

inherit git-r3 meson cmake
EGIT_REPO_URI="https://github.com/stenzek/discord-rpc.git"
EGIT_COMMIT="144f3a3f1209994d8d9e8a87964a989cb9911c1e"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
#IUSE="cli"


DEPEND="

"
RDEPEND="${DEPEND}"

BDEPEND="
    media-libs/plutovg
"
src_configure () {
#    meson_src_configure
    cmake_src_configure
}

src_compile() {
#	meson_src_compile
	cmake_src_compile
}

src_compile() {
#	meson_src_compile
	cmake_src_install
}