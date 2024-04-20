#!/bin/bash

options="--logs --date"
description="Utworz pliki log lub wyswietl date"

print_help() {
  echo "Skrypt generuje pliki log lub wyświetla aktualną datę."
  echo "Dostępne opcje:"
  echo ""
  for opt in $options; do
    echo "  -$opt  $description"
  done
  echo ""
  exit 0
}

if [ $# -eq 0 ]; then
  print_help
fi

for arg in "$@"; do
  case $arg in
    --$options)

      liczba_plikow=$2
      shift 2


      if [ ! -z "$liczba_plikow" ] && ! [[ "$liczba_plikow" =~ ^[0-9]+$ ]]; then
        echo "Liczba plików musi być wartością liczbową."
        exit 1
      fi


      for i in $(seq 1 $liczba_plikow); do
        nazwa_pliku="log$i.txt"
        echo "Nazwa pliku: $nazwa_pliku" > $nazwa_pliku
        echo "Nazwa skryptu: skrypt.sh" >> $nazwa_pliku
        echo "Data: $(date)" >> $nazwa_pliku
      done
      ;;
    --date)

      echo "Data: $(date)"
      ;;
    --help)
      print_help
      ;;
    *)
      echo "Nieznana opcja: $arg"
      exit 1
      ;;
  esac
done

