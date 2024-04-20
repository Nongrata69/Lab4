#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Brak argumentu. Podaj liczbę plików do utworzenia."
  exit 1
fi

liczba_plikow=$1

if [ ! -z "$liczba_plikow" ] && ! [[ "$liczba_plikow" =~ ^[0-9]+$ ]]; then
  echo "Liczba plików musi być liczba."
  exit 1
fi

for i in $(seq 1 $liczba_plikow); do

  nazwa_pliku="log$i.txt"


  echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
  echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
  echo "Data: $(date)" >> $nazwa_pliku
done
