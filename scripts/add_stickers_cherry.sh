#!/bin/bash

function send
{
	echo $@
	sleep 1.5
}

sleep 5

send contact_search Stickers
send msg Stickers /addsticker
send msg Stickers zhiyb_7

find -maxdepth 1 -type f | head -n 119 | while read f; do
	emoji="🍎🍐🥭🍍🍋🍊"
	emoji="🍑"
	file="$f"
	send send_document Stickers "$file"
	send msg Stickers "$emoji"
	mv "$file" done/"$file"
done
send msg Stickers /done
