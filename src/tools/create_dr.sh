#!/bin/sh
return_cmd="$(ls /home | grep ilefhail)"
if [ -z "$return_cmd" ]
then
	sudo mkdir /home/ilefhail
	sudo mkdir /home/ilefhail/data
fi
