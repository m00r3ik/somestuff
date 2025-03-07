# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 go-module

DESCRIPTION="CLI around Astal to scaffold and run projects."
HOMEPAGE="https://github.com/aylur/ags"
EGIT_REPO_URI="https://github.com/aylur/ags.git"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND="
        dev-lang/go
"
RDEPEND="${DEPEND}"
BDEPEND="
"

src_unpack() {
    git-r3_src_unpack
    go-module_live_vendor
}

src_compile() {
    ego build
}

src_install() {
    dobin ags
    einstalldocs
}
