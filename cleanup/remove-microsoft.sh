#!/bin/bash

PACKAGES="
com.microsoft.office.excel
com.microsoft.skydrive
com.microsoft.office.onenote
com.microsoft.office.word
com.microsoft.office.powerpoint
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
