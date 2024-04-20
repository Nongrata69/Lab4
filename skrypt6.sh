#!/bin/bash

liczba_plikow=100

while getopts ":e:" opt; do
  case $opt in
    e)
      liczba_plikow=$OPTARG
      ;;
    \?)
      echo "Nieznana opcja: -$OPTARG." >&2
      exit 1
      ;;
  esac
done

shift $((OPTIND-1))

if [[ "$1" == "-e30" ]]; then

  echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
  echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
  echo "Data: $(date)" >> $nazwa_pliku

  exit 0
fi


for i in $(seq 1 $liczba_plikow); do

  nazwa_pliku="error$i.txt"

  echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
  echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
  echo "Data: $(date)" >> $nazwa_pliku
done

