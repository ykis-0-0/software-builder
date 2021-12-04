#!/bin/sh

# clone
git clone http://www.github.com/paul-j-lucas/cdecl /repo

cd /repo

# build
autoreconf -fiv
./configure
make -j6

# export artifacts
mkdir -p /out/bin /out/man/man1
cp /repo/src/cdecl /out/bin/
cp /repo/man/man1/c*decl.1 /out/man/man1