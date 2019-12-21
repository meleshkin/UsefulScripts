#!/bin/bash
port=1025
SLEEP=1

date

while true
do
	echo "port: "$port

	snmptrap -v 1 -c public 127.0.0.1:$port .1.3.6.1.6.3.1.1.5.1 192.168.126.6 6 5247 11:11:11
	((port++))
	if [[ $port == 2025 ]];
		then ((port = 1025))
	fi
	sleep $SLEEP
done
