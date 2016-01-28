#!/bin/sh

LIBCLANG=`brew --prefix llvm`/lib/libclang.3.6.dylib

if [ ! -e "$LIBCLANG" ]; then
	echo "libclang 3.6 not found"
	exit 1
fi

cp "$LIBCLANG" libclang.dylib
chmod +w libclang.dylib

#install_name_tool -id libclang.dylib libclang.dylib
