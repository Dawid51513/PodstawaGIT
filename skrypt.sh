#!/bin/bash
function data {
 date +"%d-%m-%Y"
}


if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
echo $(data)

elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
 if [ "$2" ]; then
  for (( i=1; i<=$2; i++ )); do
   mkdir log$i
   echo "$i" "log$i.txt"  >>log$i/log$i.txt
   echo "$0" >>log$i/log$i.txt
   echo $(data) >>log$i/log$i.txt
 done

 else
  for (( i=1; i<=100; i++ )); do
  mkdir log$i
  echo  "$i" "log$i.txt"  >>log$i/log$i.txt
  echo "$0" >>log$i/log$i.txt
  echo $(data) >>log$i/log$i.txt
  done
 fi

elif [ "$1" = "--help" ] || [ "$1" == "-h" ]; then
echo "--date lub -d wyswietla date"
echo "--logs lub -l generuje 100 plików"
echo "--logs X lub -l liczba generuje tyle plikow ile wynosi X"
echo "--init lub -i klonuje repozytorium i dodaje sciezke PATH"
echo "--error lub -e to co logs ale error"

elif [ "$1" = "--init" ] || [ "$1" = "-i" ]; then
git clone https://github.com/Dawid51513/PodstawaGIT
export PATH="$PATH:$(dirname "$0")"

elif [ "$1" = "--error" ] || [ "$1" = "-e" ]; then
 if [ "$2" ]; then
  for (( i=1; i<=$2; i++ )); do
   mkdir error$i
   echo "$i" "error$i.txt"  >>error$i/error$i.txt
   echo "$0" >>error$i/error$i.txt
   echo $(data) >>error$i/error$i.txt
 done

 else
  for (( i=1; i<=100; i++ )); do
  mkdir log$i
  echo  "$i" "error$i.txt"  >>error$i/error$i.txt
  echo "$0" >>error$i/error$i.txt
  echo $(data) >>error$i/error$i.txt
  done
 fi

fi

