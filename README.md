# Android House Keeping

## ADB

adb shell
adb shell pm list packages -f
adb shell pm uninstall com.example.MyApp
adb shell pm list permission-groups -g
adb shell pm list features

## list installed packages

adb shell 'pm list packages -f' | sed -e 's/.*=//' | sort

## remove package

adb uninstall --user 0 com.facebook.appmanager

## Links

* https://adbcommand.com/adbshell/pm
* https://blog.thul.org/technik/betriebssysteme/samsung-galaxy-tab-s5e-entruempeln/
* https://forum.xda-developers.com/t/guide-sm-t510-ultimate-list-of-bloatware-stock-no-root-sot-10-hours.4081815/
