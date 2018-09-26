#!/vendor/bin/sh
RESULT_PATH="/sdcard"
echo "start" > $RESULT_PATH/openwifi-sh.txt
rmmod wlan
echo "rmmod" >> $RESULT_PATH/openwifi-sh.txt
sleep 2
insmod /vendor/lib/modules/wlan.ko con_mode=5
echo "insmod" >> $RESULT_PATH/openwifi-sh.txt
sleep 6
setprop persist.sys.openwifi_L 0
echo "setprop" >> $RESULT_PATH/openwifi-sh.txt
exit 0
