# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils xdg

DESCRIPTION="A comic reader for cross-platform reading and managing your comic collection"
HOMEPAGE="http://www.yacreader.com"

if [[ ${PV} == 9999 ]];then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/YACReader/${PN}.git"
else
	SRC_URI="https://github.com/YACReader/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/${P}"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE="pdf qrencode"

DEPEND="
	dev-qt/qtcore:6
	dev-qt/qtmultimedia:6
	dev-qt/qtdeclarative:6
	dev-qt/qtopengl:6
	dev-qt/qtscript:6
	virtual/glu
	dev-qt/qtquickcontrols:6
	dev-qt/qtquickcontrols2:6
	dev-util/desktop-file-utils
	app-arch/unarr
	pdf? ( app-text/poppler:=[qt6] )
	qrencode? ( media-gfx/qrencode:= )
"
RDEPEND="${DEPEND}"

src_configure(){
	eqmake6 YACReader.pro
}

src_install(){
	INSTALL_ROOT="${D}" default
}

pkg_postinst(){
	xdg_pkg_postinst
	echo
	elog "Additional packages are required to open the most common comic archives:"
	elog
	elog "	cbr: app-arch/unrar"
	elog "	cbz: app-arch/unzip"
	elog
	elog "You can also add support for 7z files by installing app-arch/p7zip"
	elog "and LHA files by installing app-arch/lha."
	elog
	elog "If you want support for extra image files, you can do it by"
	elog "installing dev-qt/qtimageformats"
	echo
}
