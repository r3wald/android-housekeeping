#!/bin/bash

while read -r PACKAGE; do
    PACKAGE=$(echo $PACKAGE | perl -pe 's/\s*#.+//');
    if [ -z "$PACKAGE" ]; then
        continue;
    fi
	echo $PACKAGE;
	adb uninstall "$PACKAGE"
	adb uninstall --user 0 "$PACKAGE"
	adb shell pm disable-user "$PACKAGE" 0>/dev/null
done

