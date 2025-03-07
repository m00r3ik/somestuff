# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VALA_USE_DEPEND="valadoc"
inherit git-r3 meson vala

DESCRIPTION="Astal IO Module"
HOMEPAGE="https://aylur.github.io/astal"
EGIT_REPO_URI="https://github.com/aylur/astal.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND="
        dev-libs/glib[introspection]
        dev-libs/gobject-introspection
"
RDEPEND="${DEPEND}"
BDEPEND="$(vala_depend)"

S="${S}/lib/astal/io"

src_prepare() {
        default
        vala_setup
}