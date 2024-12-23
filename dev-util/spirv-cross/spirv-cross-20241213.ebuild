# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake git-r3

DESCRIPTION="Tool for performing reflection on SPIR-V."
HOMEPAGE="https://github.com/KhronosGroup/SPIRV-Cross"
EGIT_REPO_URI="https://github.com/KhronosGroup/SPIRV-Cross.git"
EGIT_COMMIT="6173e24b31f09a0c3217103a130e74c4ddec14a6"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="

"
RDEPEND="${DEPEND}"

BDEPEND="
"
src_configure () {
    local mycmakeargs=(
    -DSPIRV_CROSS_SHARED=ON
    )
    cmake_src_configure
}




