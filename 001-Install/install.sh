#!/bin/sh
# Skrip ini sebenarnya gak perlu

# cek root
if [ "$EUID" -ne 0 ]; then
	echo "Maaf, Anda tidak berhak melakukan pemasangan" 1>&2
	exit 1
fi

# cek apt-get
if [ -x /usr/bin/apt-get ]; then
	apt-get update
	apt-get install postgresql
else
	echo "Maaf, skrip ini hanya untuk OS linux dengan pemaketan Debian" 1>&2
fi
