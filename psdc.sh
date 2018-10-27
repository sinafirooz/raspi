#!/bin/bash

FILENAME='raspbian_lite_latest.zip'

# download the latest linux for raspberry pi:
wget 'https://downloads.raspberrypi.org/raspbian_lite_latest' FILENAME

# find sd card reader:
diskutil info -all | awk 'BEGIN { FS = "\n"; RS = "\n\n\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\n\n" }
                          /Part of Whole: / { print }'