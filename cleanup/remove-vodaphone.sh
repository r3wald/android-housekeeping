#!/bin/bash

PACKAGES="
com.vodafone.accesorystore
com.vodafone.addressbook
com.vodafone.android.myweb.launcher
com.vodafone.cloud
com.vodafone.sn.vpn
com.vodafone.smhs
com.vodafone.vodafone360updates
com.wsandroid.suite.vodaemea
"

for p in $PACKAGES; do
	echo "removing $p"
	adb uninstall --user 0 "$p"
done
