# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit linux-info

DESCRIPTION="SVG rendering library in C++, designed to be lightweight and portable, offering efficient rendering and manipulation of Scalable Vector Graphics (SVG) files."
HOMEPAGE="https://github.com/sammycage/lunasvg"

inherit git-r3 meson cmake
EGIT_REPO_URI="https://github.com/sammycage/lunasvg.git"
EGIT_COMMIT="23578c7461634623a5de903370310b3af5140536"

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
