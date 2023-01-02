# Maintainer: Caleb Bredekamp
pkgname=csb-nvim-conf-git
_pkgname=csb-nvim-conf
pkgver=23.01
pkgrel=02
_destname1="/etc/skel/"
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
	rm ${srcdir}/${_pkgname}/git*
	rm ${srcdir}/${_pkgname}/setup*
	cp -r ${srcdir}/${_pkgname}/* ${pkgdir}${_destname1}
	cp -r ${srcdir}/${_pkgname}/* ${pkgdir}${_destname2}
}
