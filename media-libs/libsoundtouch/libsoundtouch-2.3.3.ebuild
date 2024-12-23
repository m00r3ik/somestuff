# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

MY_PN=${PN/lib}
MY_P=${MY_PN}-${PV}
DESCRIPTION="Audio processing library for changing tempo, pitch and playback rates"
HOMEPAGE="https://www.surina.net/soundtouch/ https://codeberg.org/soundtouch/soundtouch"
SRC_URI="https://www.surina.net/${MY_PN}/${MY_P}.tar.gz"
S="${WORKDIR}/${MY_PN}"

LICENSE="LGPL-2.1"
# subslot = libSoundTouch.so soname
SLOT="0/1"
KEYWORDS="amd64 ~arm ~arm64 ~hppa ~loong ~mips ppc ppc64 ~riscv x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE="cpu_flags_x86_sse openmp static-libs"

BDEPEND="virtual/pkgconfig"

src_prepare() {
	cmake_src_prepare

}
src_configure () {
    local mycmakeargs=(
    -DCMAKE_INTERPROCEDURAL_OPTIMIZATION=ON
    -DCMAKE_BUILD_TYPE=Release
    )
    cmake_src_configure
}

src_compile() {
	cmake_src_compile
}