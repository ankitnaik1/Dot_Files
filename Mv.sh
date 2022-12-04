#!/bin/bash

echo "Enter Username"
read Username

cp mpv/* /home/$Username/.var/app/io.mpv.Mpv/config/mpv/

echo "Done"