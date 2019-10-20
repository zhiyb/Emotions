#!/bin/bash

function send
{
	echo $@
	sleep 0.5
}

sleep 3

delay=0.5
send contact_search Stickers
send msg Stickers /addsticker
send msg Stickers zhiyb
while read line; do
	set $line
	emoji=$1
	shift
	file="$@"
	send send_document Stickers "$file"
	send msg Stickers "$emoji"
done
send msg Stickers /done
