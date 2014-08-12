#!/system/bin/sh

UKM=/data/UKM;
BB=$UKM/busybox;
DEVICE=`getprop ro.product.device`;

if [ $DEVICE == "mako" ]; then
	CONFIG="mako"; #Nexus 4
elif [ $DEVICE == "hammerhead" ]; then
	CONFIG="hammerhead"; #Nexus 5
elif [ $DEVICE == "deb" -o $DEVICE == "flo" ]; then
	CONFIG="deb"; #Nexus 7
elif [ $DEVICE == "bacon" -o $DEVICE == "A0001" ]; then
	CONFIG="bacon"; #OnePlus One
else
	CONFIG=""; #Not defined
fi;

if [ -n "$CONFIG" ]; then
	PATH=$UKM/device/$CONFIG.sh;
else
	PATH="";
fi;

$BB echo "$PATH";
