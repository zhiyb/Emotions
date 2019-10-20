#!/bin/bash

function send
{
	echo $@
	sleep 0.5
}

sleep 3

delay=0.5
send contact_search Stickers

while sleep 3; do
	send msg Stickers /delsticker
	send msg Stickers zhiyb
	echo "Now, select a sticker..."
done
