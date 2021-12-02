#!/bin/sh

libdir=/usr/lib

[ $# != 0 ] && libdir=$1

patch -p1 < bgra.patch

./autogen.sh \
  --prefix=/usr \
  --libdir=$libdir \
  --sysconfdir=/etc \
  --localstatedir=/var \
  --infodir=/usr/share/info \
  --mandir=/usr/share/man \
  --docdir=/usr/share/doc/libxft-git \
  --disable-static \


sudo make install
