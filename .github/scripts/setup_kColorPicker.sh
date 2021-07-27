#!/bin/bash

echo "--> Install latest version of kColorPicker"
git clone --depth 1 git://github.com/ksnip/kColorPicker

cd kColorPicker || exit
mkdir build && cd build || exit
cmake .. -DCMAKE_BUILD_TYPE="${BUILD_TYPE}" -DBUILD_EXAMPLE=OFF -DCMAKE_INSTALL_PREFIX="${INSTALL_PREFIX}" -G"${1}"
echo "--------------"
ls -al
echo "--------------"
move makefile.txt makefile
make && sudo make install