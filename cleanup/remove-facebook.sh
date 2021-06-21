#!/bin/bash

PACKAGES="
com.facebook.appmanager
com.facebook.katana
com.facebook.services
com.facebook.system
com.instagram.android
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
