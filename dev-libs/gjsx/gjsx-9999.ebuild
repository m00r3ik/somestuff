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
        dev-libs/astal-gtk

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