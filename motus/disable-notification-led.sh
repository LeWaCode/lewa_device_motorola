#!/system/bin/sh

LOG="log -p i -t motus"
echo 0 0 0 > /sys/class/leds/messaging/blink
$LOG "Disabling the notification led for the rest of boot process"
