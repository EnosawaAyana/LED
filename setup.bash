#!/bin/bash 

if [ -e /dev/myled0 ] ; then
    sudo rmmod myled
fi


if [ -e myled.ko ] ; then
    sudo make clean
fi

make -j1
sudo insmod myled.ko
sudo chmod 666 /dev/myled0
