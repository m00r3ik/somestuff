# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake multibuild

DESCRIPTION="Phonon Backend using MPV Player(libmpv)"
HOMEPAGE="https://github.com/OpenProgger/phonon-mpv"
SRC_URI="
	https://github.com/OpenProgger/phonon-mpv/archive/refs/tags/v${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~amd64"


DEPEND="
	>=media-libs/phonon-4.12.0:=
	>=media-video/mpv-0.29.0:=
	dev-qt/qtbase:6[gui,opengl,widgets,X]
"
RDEPEND="${DEPEND}"
BDEPEND="
	kde-frameworks/extra-cmake-modules
	virtual/pkgconfig
"


src_configure() {
    append-cppflags -DQT_NO_DEBUG
		local mycmakeargs=(
		-DPHONON_BUILD_QT5=OFF
		-DPHONON_BUILD_QT6=ON)
	cmake_src_configure
}

src_install() {
	 cmake_src_install
}
