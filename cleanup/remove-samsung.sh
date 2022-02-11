#!/bin/bash


PACKAGES="
com.sec.android.app.desktoplauncher
com.sec.android.app.launcher
com.samsung.aasaservice
com.samsung.advp.imssettings
com.samsung.android.aircommandmanager
com.samsung.android.allshare.service.fileshare
com.samsung.android.allshare.service.mediashare
com.samsung.android.app.aodservice
com.samsung.android.app.appsedge
com.samsung.android.app.camera.sticker.facearavatar.preload
com.samsung.android.app.camera.sticker.facearexpression.preload
com.samsung.android.app.camera.sticker.facearframe.preload
com.samsung.android.app.camera.sticker.facear.preload
com.samsung.android.app.camera.sticker.stamp.preload
com.samsung.android.app.clipboardedge
com.samsung.android.app.cocktailbarservice
com.samsung.android.app.dressroom
com.samsung.android.app.galaxyfinder
com.samsung.android.app.ledbackcover
com.samsung.android.app.reminder
com.samsung.android.app.routines
com.samsung.android.app.sbrowseredge
com.samsung.android.app.sharelive
com.samsung.android.app.social
com.samsung.android.app.spage
com.samsung.android.app.vrsetupwizardstub
com.samsung.android.app.watchmanagerstub
com.samsung.android.ardrawing
com.samsung.android.aremoji
com.samsung.android.authfw
com.samsung.android.aware.service
com.samsung.android.bbc.bbcagent
com.samsung.android.bluelightfilter
com.samsung.android.clipboarduiservice
com.samsung.android.da.daagent
com.samsung.android.dqagent
com.samsung.android.drivelink.stub
com.samsung.android.easysetup
com.samsung.android.email.provider
com.samsung.android.emojiupdater
com.samsung.android.fmm
com.samsung.android.forest
com.samsung.android.game.gamehome
com.samsung.android.game.gametools
com.samsung.android.game.gos
com.samsung.android.gametuner.thin
com.samsung.android.hmt.vrshell
com.samsung.android.hmt.vrsvc
com.samsung.android.kidsinstaller
com.samsung.android.livestickers
com.samsung.android.mateagent
com.samsung.android.mdecservice
com.samsung.android.mdx.quickboard
com.samsung.android.net.wifi.wifiguider
com.samsung.android.oneconnect
com.samsung.android.rubin.app
com.samsung.android.samsungpass
com.samsung.android.samsungpassautofill
com.samsung.android.scloud
com.samsung.android.sdk.handwriting
com.samsung.android.sdk.professionalaudio.utility.jammonitor
com.samsung.android.service.aircommand
com.samsung.android.service.livedrawing
com.samsung.android.service.peoplestripe
com.samsung.android.smartmirroring
com.samsung.android.smartswitchassistant
com.samsung.android.sm.devicesecurity
com.samsung.android.spay
com.samsung.android.spayfw
com.samsung.android.stickercenter
com.samsung.android.stickerplugin
com.samsung.android.svoiceime
com.samsung.android.themestore
com.samsung.android.universalswitch
com.samsung.android.visionarapps
com.samsung.android.visioncloudagent
com.samsung.android.voc
com.samsung.android.wellbeing
com.samsung.android.widgetapp.yahooedge.finance
com.samsung.android.widgetapp.yahooedge.sport
com.samsung.app.highlightplayer
com.samsung.app.newtrim
com.samsung.clipboardsaveservice
com.samsung.desktopsystemui
com.samsung.ecomm.global
com.samsung.hiddennetworksetting
com.samsung.safetyinformation
com.samsung.storyservice
com.samsung.voiceserviceplatform
com.samsung.android.homemode
com.sec.android.app.samsungapps
com.sec.android.app.sbrowser
com.sec.android.service.health
com.sec.android.app.shealth
com.sec.android.app.bluetoothtest
com.sec.android.app.dexonpc
com.sec.android.app.kidshome
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
com.sec.android.mimage.sstudio
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
com.vlingo.midas
com.sec.android.widgetapp.SPlannerAppWidget
com.sec.android.app.videoplayer
com.sec.android.app.music
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
