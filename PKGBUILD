# Maintainer: Filipe Teixeira <address at domain dot tld>

_pkgname=incBackup
pkgname=$_pkgname-git
pkgver=v1.0.0
pkgrel=1
pkgdesc="Simple bash script to make incremental backups to external driver"
arch=('i686' 'x86_64')
url="https://github.com/teixeiras/incBackup"
license=('MIT')
groups=()
depends=()
makedepends=('python-croniter')
optdepends=('')
provides=("$_pkgname")
conflicts=("$_pkgname")
backup=("etc/$_pkgname/$_pkgname.conf")
source=("$_pkgname::git+https://github.com/teixeiras/incBackup")
md5sums=('SKIP')

pkgver() {
  cd "$srcdir/$_pkgname"
  git describe --tags | sed 's|-|.|g'
}

build() {
  # nothing to build
  echo "Bash script" 
}

package() {
  cd "$srcdir/$_pkgname"
  make install PREFIX="$pkgdir/usr" 
}

# vim:set ts=2 sw=2 et:
