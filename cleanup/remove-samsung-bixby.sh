#!/bin/bash

PACKAGES="
com.samsung.android.app.settings.bixby
com.samsung.android.bixby.agent
com.samsung.android.bixby.agent.dummy
com.samsung.android.bixby.service
com.samsung.android.bixby.wakeup
com.samsung.android.bixbyvision.framework
com.samsung.android.visionintelligence
com.samsung.systemui.bixby2
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
