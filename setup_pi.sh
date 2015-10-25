#! /bin/bash

# This script sets up a raspberry pi with ds1307 based RTC and weewx
# for use with a Vantage Pro with data logger.

# RTC 
apt-get install -y python-smbus i2c-tools


cat >> /etc/modules << EOF_MODULES
# weewx
i2c-bcm2708 
i2c-dev
rtc-ds1307
EOF_MODULES

cat >> /boot/config.txt << EOF_PARAM
# weewx
dtparam=i2c1=on
dtparam=i2c_arm=on
EOF_PARAM

