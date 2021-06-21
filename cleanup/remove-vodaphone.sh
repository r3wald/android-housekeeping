#!/bin/bash

PACKAGES="
com.vodafone.accesorystore
com.vodafone.sn.vpn
com.vodafone.vodafone360updates
"

for p in $PACKAGES; do
	echo "removing $p"
	adb uninstall --user 0 "$p"
done
