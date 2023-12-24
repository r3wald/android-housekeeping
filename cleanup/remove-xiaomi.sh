#!/bin/bash

PACKAGES="
com.duokan.phone.remotecontroller
com.miui.android.fashiongallery
com.android.thememanager
com.android.thememanager.gliobal_config.config.overlay
com.facebook.appmanager
com.facebook.services
com.facebook.system
com.linkedin.android
com.google.android.googlequicksearchbox
com.miui.analytics
com.miui.backup
com.miui.bugreport
com.miui.calculator
com.miui.cit
com.miui.cleaner
com.miui.cloudbackup
com.miui.cloudservice
com.miui.cloudservice.sysbase
com.miui.compass
com.miui.daemon
com.miui.fm
com.miui.fmservice
com.miui.hybrid
com.miui.hybrid.accessory
com.miui.miservice
com.miui.msa.global
com.miui.notes
com.miui.phrase
com.miui.player
com.miui.qr
com.miui.touchassistant
com.miui.videoplayer
com.miui.weather2
com.miui.yellowpage
com.xiaomi.joyose
com.xiaomi.mi_connect_service
com.xiaomi.micloud.sdk
com.xiaomi.midrop
com.xiaomi.mipicks
com.xiaomi.payment
com.xiaomi.scanner
com.xiaomi.simactivate.service
com.xiaomi.xmsfkeeper
de.telekom.tsc
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done

