pkgname="sed"
pkgver=4.4
pkgrel=1
pkgdesc="SED the stream editor"
arch=("x86_64")
license=('GPL')
source=("")
build() {
        cd "$pkgname-${pkgver}"
        ./configure --prefix=/usr
        make
}

package() {
        cd "$pkgname-${pkgver}"
        make DESTDIR="$pkgdir" install
}
