#!/bin/bash

PACKAGES="
com.samsung.android.knox.analytics.uploader
com.samsung.android.knox.attestation
com.samsung.android.knox.containercore
com.samsung.android.knox.containeragent
com.samsung.android.knox.containeragent
com.samsung.android.knox.containercore
com.samsung.klmsagent
com.samsung.knox.keychain
com.samsung.knox.securefolder
com.sec.enterprise.knox.attestation
com.sec.enterprise.knox.cloudmdm.smdms
com.knox.vpn.proxyhandler
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
