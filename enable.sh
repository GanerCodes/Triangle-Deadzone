#!/bin/bash -e
{ cd "${0%/*}"

SU="$(which doas || which sudo)"
"$SU" modprobe -r xpad
"$SU" modprobe xpad corner_deadzone="${1:-35}"

exit $?; }