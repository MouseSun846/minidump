#!/bin/bash
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Jenkins build script for building Breakpad

# any failures in this script should cause the build to fail
set -e

# Checkout and build Breakpad
echo "PREFIX: ${PREFIX:=`pwd`/build/breakpad}"
cd google-breakpad
mkdir -p ${PREFIX}
make clean
./configure --prefix=${PREFIX} -enable-m32
make install
