# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit linux-info

DESCRIPTION="standalone 2D vector graphics library in C."
HOMEPAGE="https://github.com/sammycage/plutovg/"

inherit git-r3 cmake
EGIT_REPO_URI="https://github.com/sammycage/plutovg.git"
EGIT_BRANCH="main"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
#IUSE="cli"


DEPEND="

"
RDEPEND="${DEPEND}"

BDEPEND=""

src_prepare() {
	cmake_src_prepare

}
src_configure () {
    local mycmakeargs=()
    cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

