#!/bin/bash -e
{ cd "${0%/*}"

SU="$(which doas || which sudo)"
mkdir -p build && cd build
cp ../xpad.c .
echo 'obj-m := xpad.o' > ./Makefile

KVER="$(uname -r)"
KDIR="/lib/modules/$KVER/build"
MODDIR="$(realpath .)"

make -C "$KDIR" M="$MODDIR" modules
"$SU" install -D -m 644 "$MODDIR/xpad.ko" "/usr/lib/modules/$KVER/updates/xpad.ko"
"$SU" depmod -a "$KVER"

exit $?; }