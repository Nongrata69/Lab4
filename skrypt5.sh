#!/bin/bash

clone_repository() {

  repository_url=$1

if [ "$1" != "--init" ]; then
  echo "Bledne uzycie skryptu. Użyj \"skrypt5.sh --init <URL_repozytorium>\""
  exit 1
fi

set_path() {

  repository_path=$(pwd)

clone_repository "$repository_url"

set_path
