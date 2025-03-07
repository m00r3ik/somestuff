# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VALA_USE_DEPEND="valadoc"
inherit git-r3 meson vala

DESCRIPTION="Astal GTK Module"
HOMEPAGE="https://aylur.github.io/astal"
EGIT_REPO_URI="https://github.com/aylur/astal.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND="
        dev-libs/astal-io
        dev-libs/glib[introspection]
        dev-libs/gobject-introspection
        dev-libs/wayland
        dev-libs/wayland-protocols
        x11-libs/gdk-pixbuf[introspection]
        x11-libs/gtk+:3[introspection]
        gui-libs/gtk-layer-shell[introspection,vala]
"
RDEPEND="${DEPEND}"
BDEPEND="
        dev-util/wayland-scanner
        $(vala_depend)
"

S="${S}/lib/astal/gtk3"

src_prepare() {
        default
        vala_setup
}