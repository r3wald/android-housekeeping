#!/bin/bash

curl --location --output novalauncher.apk "http://teslacoilsw.com/tesladirect/download.pl?packageName=com.teslacoilsw.launcher"
adb install novalauncher.apk
