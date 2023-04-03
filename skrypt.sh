#!/bin/bash
function data {
 date +"%d-%m-%Y"
}


if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
echo $(data)

elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
 if [ "$2" ]; then
  for (( i=1; i<=$2; i++ )); do
   touch log$i.txt
   echo "$i" "log$i.txt"  >>log$i.txt
   echo "$0" >>log$i.txt
   echo $(data) >>log$i.txt
 done

 else
  for (( i=1; i<=100; i++ )); do
  touch log$i.txt
  echo  "$i" "log$i.txt"  >>log$i.txt
  echo "$0" >>log$i.txt
  echo $(data) >>log$i.txt
  done
 fi

elif [ "$1" = "--help" ] || [ "$1" == "-h" ]; then
echo "--date wyswietla date"
echo "--logs generuje 100 plików"
echo "--logs X liczba generuje tyle plikow ile wynosi X"

elif [ "$1" = "--init" ] || [ "$1" = "-i" ]; then
git clone https://github.com/Dawid51513/PodstawaGIT
export PATH="$PATH:$(dirname "$0")"

fi
