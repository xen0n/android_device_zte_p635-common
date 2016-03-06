# ZTE Blade A1

This is the common tree for ZTE Blade A1 (C880U and C880A).


## Device spec

* MT6735
* 2GB RAM / 16GB internal storage


## Current status

Working:

* Backlight
* Audio
* WiFi
* Bluetooth
* Camera
* Sensors (seems only accelerometer is present on this model)
* GSM/WCDMA voice calls
* CDMA and GSM SMS

Mostly working:

* CDMA 3G data connectivity
    - Initial attach APNs are set correctly for both CDMA and GSM subscriptions
    - Attaching works at first boot
    - But not working anymore after toggling data switch

Not working but TODO:

* CDMA voice calls
* SVLTE data connectivity
* SIM switching
* VoLTE; this one is *huge* amount of work, hence priority is lower.

Mostly out of reach if not outright impossible:

* Fingerprint
