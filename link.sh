#!/usr/local/bin/bash

R=$(cd `dirname "$0"` && pwd)/ports

for p in `find $R -type d -depth 2 -print`; do
	DEST=${p/$R/\/usr\/ports}
	echo "$p -> $DEST"
	# Force directory unlink if it exists, force file unlink if it exists, create soft link
	sudo ln -F -f -s $p $DEST
done
