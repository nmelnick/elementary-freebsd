#!/usr/local/bin/bash

. modules.sh

for p in "${ORDERING[@]}"; do
        cd "$R/$p"
        echo "=== $R/$p"
        sudo make deinstall
done
