#!/bin/sh

ln -s /dev/rfcomm1 /dev/ttyUSB1
xterm -e rfcomm connect 1 00:0A:3A:2E:C8:C6 &
until [ -w /dev/ttyUSB1 ];
do
    sleep 0.1
    echo "waiting";
done
python create_drive_BT.py
