#!/bin/bash

liczba_plikow=100

for i in $(seq 1 $liczba_plikow); do
  # Utwórz nazwę pliku
  nazwa_pliku="log$i.txt"

  echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
  echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
  echo "Data: $(date)" >> $nazwa_pliku
done
