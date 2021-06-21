#!/bin/bash

PACKAGES="
com.netflix.mediaclient
com.netflix.partner.activation
de.axelspringer.yana.zeropage
com.google.android.partnersetup
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
