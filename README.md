# Android House Keeping

## workflow

1. create a list of all installed packages
2. look for unwanted and suspicious packages
3. mark packages to remove
4. remove packages

## create a list of all installed packages

    adb shell 'pm list packages -f' | sed -e 's/.*=//' | sort

Create a list of packages for further use:

    adb shell 'pm list packages -f' | sed -e 's/.*=//' | sed -e 's/^/# /' | sort > packages.txt

## remove single package

    adb uninstall --user 0 com.facebook.appmanager

## look for unwanted and suspicious packages

Open up your generated package list and look for unwanted and suspicious packages. Suspicious packages are those that
you don't know what they are for. Usually you can ignore packages with 'com.android', 'com.google' and your hardware
vendors name.
Since the remove-script ignores everything after '#', you can add the real application name at the end of every line.
Comment out packages you want to keep.

* https://google.com/
* https://github.com/search?q=android+bloatware&type=repositories
* https://xdaforums.com/
* ...

## remove list of packages

* create list of packages to remove: unwanted_packages.txt
* `./remove.sh < unwanted_packages.txt`

## ADB

* adb shell
* adb shell pm list packages -f
* adb shell pm uninstall com.example.MyApp
* adb shell pm list permission-groups -g
* adb shell pm list features

## Links

* https://adbcommand.com/adbshell/pm
* https://blog.thul.org/technik/betriebssysteme/samsung-galaxy-tab-s5e-entruempeln/
* https://forum.xda-developers.com/t/guide-sm-t510-ultimate-list-of-bloatware-stock-no-root-sot-10-hours.4081815/
