#!/bin/bash

if [ ! -f Telegram.apk ]; then
    curl --location --output Telegram.apk "https://telegram.org/dl/android/apk"
fi
adb install Telegram.apk
