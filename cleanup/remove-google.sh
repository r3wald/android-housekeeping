#!/bin/bash

PACKAGES="
com.android.bips
com.android.bookmarkprovider
com.android.chrome
com.android.egg
com.android.email
com.android.hwmirror
com.android.hotwordenrollment.okgoogle
com.android.hotwordenrollment.xgoogle
com.android.partnerbrowsercustomizations.tmobile
com.android.printspooler
com.android.providers.partnerbookmarks
com.android.providers.downloads.ui
com.android.partnerbrowsercustomizations
com.android.sharedstoragebackup
com.android.storagemanager
com.android.stk
com.android.soundrecorder
com.android.vpndialogs
com.android.wallpapercropper
com.android.wallpaper.livepicker
com.google.android.apps.books
com.google.android.apps.docs.editors.docs
com.google.android.apps.docs.editors.sheets
com.google.android.apps.docs.editors.slides
com.google.android.apps.cloudprint
com.google.android.apps.docs
com.google.android.apps.mapps
com.google.android.apps.photos
com.google.android.apps.tachyon
com.google.android.apps.magazines
com.google.android.feedback
com.google.android.googlequicksearchbox
com.google.android.keep
com.google.android.marvin.talkback
com.google.android.music
com.google.android.onetimeinitializer
com.google.android.partnersetup
com.google.android.printservice.recommendation
com.google.android.play.games
com.google.android.projection.gearhead
com.google.android.talk
com.google.android.videos
com.google.android.youtube
com.google.android.googlequicksearchbox
com.google.ar.core
com.google.vr.vrcore
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
