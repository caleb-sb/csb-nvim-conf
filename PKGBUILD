# Maintainer: Caleb Bredekamp
pkgname=csb-nvim-conf-git
_pkgname=csb-nvim-conf
pkgver=v0.0.1.r1.g8966f88
pkgrel=1
_destname1="/etc/skel/.config/nvim/"
pkgdesc="CSB neovim configuration"
arch=('any')
url="https://github.com/caleb-sb/${_pkgname}.git"
license=('MIT')
depends=('neovim')
makedepends=('git')
replaces=()
provides=("${pkgname}")
conflicts=()
options=(!strip !emptydirs)
source=(${_pkgname}::"git+${url}")
sha256sums=('SKIP')
package() {
	install -dm 755 ${pkgdir}${_destname1}
	cp -r ${srcdir}/${_pkgname}/* ${pkgdir}${_destname1}
	cp -r ${srcdir}/${_pkgname}/* ${pkgdir}${_destname2}
}
pkgver() {
	cd "$_pkgname"
	git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}