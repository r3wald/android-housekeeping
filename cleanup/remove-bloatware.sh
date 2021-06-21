#!/bin/bash

PACKAGES="
com.android.bips
com.android.egg
com.android.hotwordenrollment.okgoogle
com.android.hotwordenrollment.xgoogle
com.android.printspooler
com.android.providers.downloads.ui
com.android.providers.partnerbookmarks
com.android.sharedstoragebackup
com.android.vpndialogs
com.android.wallpapercropper
com.android.wallpaper.livepicker
com.cnn.mobile.android.phone.edgepanel
com.diotek.sec.lookup.dictionary
com.dsi.ant.plugins.antplus
com.dsi.ant.sample.acquirechannels
com.dsi.ant.server
com.dsi.ant.service.socket
com.enhance.gameservice
com.google.android.feedback
com.google.android.googlequicksearchbox
com.google.android.onetimeinitializer
com.google.android.partnersetup
com.google.android.printservice.recommendation
com.google.android.projection.gearhead
com.google.ar.core
com.google.vr.vrcore
com.mobeam.barcodeService
com.osp.app.signin
com.sec.android.app.bluetoothtest
com.sec.android.app.desktoplauncher
com.sec.android.app.dexonpc
com.sec.android.app.kidshome
com.sec.android.app.launcher
com.sec.android.app.popupcalculator
com.sec.android.app.samsungapps
com.sec.android.app.sbrowser
com.sec.android.app.shealth
com.sec.android.app.voicenote
com.sec.android.app.wlantest
com.sec.android.cover.ledcover
com.sec.android.daemonapp
com.sec.android.desktopmode.uiservice
com.sec.android.easyMover.Agent
com.sec.android.easyonehand
com.sec.android.mimage.avatarstickers
com.sec.android.sdhms
com.sec.android.splitsound
com.sec.android.widgetapp.samsungapps
com.sec.ims
com.sec.imslogger
com.sec.imsservice
com.sec.mhs.smarttethering
com.sec.spp.push
com.sec.svoice.lang.de_DE
com.sec.svoice.lang.en_GB
com.sec.svoice.lang.en_US
com.sec.svoice.lang.es_ES
com.sec.svoice.lang.fr_FR
com.sec.svoice.lang.it_IT
com.sec.svoice.lang.ru_RU
com.sec.vsimservice
com.wsomacp
"

for p in $PACKAGES; do
	echo "removing $p"
	adb uninstall --user 0 "$p"
done
