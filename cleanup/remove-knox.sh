#!/bin/bash

PACKAGES="
com.samsung.android.knox.containercore
com.sec.enterprise.knox.attestation
com.samsung.android.knox.attestation
com.samsung.android.knox.containeragent
com.samsung.knox.keychain
com.samsung.android.knox.analytics.uploader
com.knox.vpn.proxyhandler
com.samsung.knox.securefolder
com.sec.enterprise.knox.cloudmdm.smdms
com.samsung.android.knox.containeragent
com.samsung.android.knox.containercore
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
