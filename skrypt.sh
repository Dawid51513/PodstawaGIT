#!/bin/bash
function data {
 date +"%d-%m-%Y"
}


if [ "$1" = "--date" ]; then
echo $(data)

elif [ "$1" = "--logs" ]; then
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

elif [ "$1" = "--help" ]; then
echo "--date lub -d wyswietla date"
echo "--logs lub -l generuje 100 plików"
echo "--logs X lub -l liczba generuje tyle plikow ile wynosi X"
echo "--init lub -i klonuje repozytorium i dodaje sciezke PATH"
echo "--error lub -e to co logs ale error"

fi
