#!/bin/bash

# check_img_script.sh
# Added to crontab ro be run at set intervals to check if the porch_img_check-script is running
# Thomas Vadahl, 20170615

if ! pgrep -x "porch_img_check" > /dev/null
then
    /usr/bin/nohup /root/bin/porch_img_check.sh  > /dev/null 2>&1 &
    echo "Process porch_img_check.sh not running. Starting up."
else
    echo "Process porch_img_check.sh still running."
fi


