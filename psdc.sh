#!/bin/bash

FILENAME='raspbian_lite_latest.zip'

# download the latest linux for raspberry pi:
wget 'https://downloads.raspberrypi.org/raspbian_lite_latest' FILENAME

# find sd card reader:
sd_cards=diskutil info -all
disk_number=
sudo dd bs=1m if=$IMAGE_PATH of=/dev/disk$disk_number