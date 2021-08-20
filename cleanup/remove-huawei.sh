#!/bin/bash

PACKAGES="
com.baidu.input_huawei
com.huawei.appmarket
com.huawei.phoneservice
com.huawei.hwid
com.huawei.android.chr
com.huawei.android.hwpay
com.huawei.android.remotecontroller
com.huawei.android.tips
com.huawei.browser
com.huawei.compass
com.huawei.contactscamcard
com.huawei.health
com.huawei.hwapplet
com.huawei.hifolder
com.huawei.KoBackup
com.huawei.parentcontrol
com.huawei.search
com.huawei.tips
com.huawei.vassistant
com.huawei.wallet
com.huawei.himovie.overseas
com.ironsource.appcloud.oobe.huawei
"

for p in $PACKAGES; do
	echo $p
	adb uninstall --user 0 "$p"
done
