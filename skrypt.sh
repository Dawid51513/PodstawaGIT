#!/bin/bash
function data {
 date +"%d-%m-%Y"
}


if [ "$1" = "--date" ]; then
echo $(data)
elif [ "$1" = "--logs" ]; then
 for (( i = 1 ; i <= 100; i++ ))
 do
 touch log$i.txt
 echo  "$i" "log$i.txt"  >>log$i.txt
 echo "$0" >>log$i.txt
 echo $(data) >>log$i.txt
 done
fi
