# Amazon Fire Tablet

Über die Amazon Debug Bridge (adb) lassen sich einige Apps auf dem Amazon Fire Tablet deinstallieren. Manche Apps lassen
sich aber nicht deinstallieren, sondern nur deaktivieren.
Voraussetzung dafür ist, dass auf dem Tablet der Entwickler-Modus aktiviert und die Debug Bridge aktiviert ist. 

## Tablet vorbereiten

1. Einstellungen
2. Geräteoptionen
3. Über das Fire-Tablet
4. Seriennummer 7x drücken
5. zurück
6. Entwickleroptionen
7. Entwickleroptionen aktivieren
8. USB-Debugging aktivieren
9. ADB-Verbindung zulassen

## Rechner vorbereiten

Diese Änderungen sind nur notwendig, wenn die notwendigen Tools nicht installiert sind und/oder das Teblet nicht von der
Android Debug Bridge (adb) erkannt wird.

1. sudo apt install android-tools-adb android-tools-fastboot
2. sudo cp /lib/udev/rules.d/51-android.rules /etc/udev/rules.d/
3. sudo vi /etc/udev/rules.d/51-android.rules
4. `SUBSYSTEM=="usb", ATTR{idVendor}=="1949", ATTR{idProduct}=="0658", ENV{adb_user}="yes"` hinzufügen
5. sudo udevadm control --reload-rules

## Liste der vorhandenen Apps erstellen

    `adb shell 'pm list packages -f' | sed -e 's/.*=//' | sort > packages`.txt

## Apps deinstallieren oder deaktivieren

Dafür ist eine Liste der Apps notwendig, die deinstalliert oder deaktiviert werden sollen. Diese Liste soll die App-Ids
enthalten, wie sie in der Liste der Apps erstellt wurde.

    ./cleanup.sh < unwanted.txt

## Besonderheiten

Der Updater sorgt nicht nur für Updates der Amazon-Apps, sondern stellt auch Amazon-Apps und Einstellungen wieder her.
