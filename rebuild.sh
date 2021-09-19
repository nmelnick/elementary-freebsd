#!/usr/local/bin/bash

set -e

. modules.sh

ORDERING=("${LIBS[@]}" "${SESSION[@]}" "${APPS[@]}" "${PLUGS[@]}" "${THIRD_PARTY[@]}")

for p in "${ORDERING[@]}"; do
        cd "$R/$p"
        echo "=== $R/$p"
        sudo make deinstall; sudo make clean && sudo make package && sudo make install
done
