#!/bin/sh

pkgname=$(sed -n 's/^pkgname=\(.*\)/\1/p' < package/PKGBUILD)
pkgver=$(sed -n 's/^pkgver=\(.*\)/\1/p' < package/PKGBUILD)

tar -czf "package/${pkgname}-$pkgver.tar.gz" "files"
