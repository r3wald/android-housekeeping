#!/bin/bash

#com.amazon.appmanager #  Amazon app
#com.amazon.mShop.android.shopping #  Amazon app related
#com.booking #  Booking app
#com.baidu.input_huawei #  Huawei chinese stock input keyboard
#com.ironsource.appcloud.oobe.huawei #  Download Essential Apps
#com.hicloud.android.clone #  Clone device
#com.swiftkey.swiftkeyconfigurator #  SwiftKey factory settings
#com.touchtype.swiftkey #  SwiftKey Keyboard (Empfehlung: Gboard)

PACKAGES="
com.example.android.notepad
com.cnn.mobile.android.phone.edgepanel
com.diotek.sec.lookup.dictionary
com.dsi.ant.plugins.antplus
com.dsi.ant.sample.acquirechannels
com.dsi.ant.server
com.dsi.ant.service.socket
com.enhance.gameservice
com.mobeam.barcodeService
com.osp.app.signin
com.wsomacp
flipboard.app
tv.peel.smartremote
com.dropbox.android
flipboard.boxer.app
"

for p in $PACKAGES; do
	echo "removing $p"
	adb uninstall --user 0 "$p"
done
