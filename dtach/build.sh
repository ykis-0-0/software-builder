#!/bin/sh

# clone
git clone http://www.github.com/xPMo/dtach /repo

cd /repo

# build
./configure
make -j6

# export artifacts
mkdir -p /out/bin /out/man/man1
cp /repo/dtach /out/bin/
cp /repo/dtach.1 /out/man/man1