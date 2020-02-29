#!/bin/bash
#install to /usr/local/bin

cp ./backlight /usr/local/bin/backlight


cd /etc/init.d
touch backlight
chmod o+x /etc/init.d/backlight 
chmod g+x /etc/init.d/backlight

BACKLIGHT_FILE="/etc/init.d/backlight"

echo "#! bin/sh
	  
chmod o+w /sys/class/backlight/intel_backlight/brightness
" > $BACKLIGHT_FILE;
update-rc.d backlight defaults
echo 'installed to /usr/local/bin! now type `backlight`'