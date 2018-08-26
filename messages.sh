#!/bin/bash

set -e

RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
RESET=`tput sgr0`

function info {
  echo "I ${YELLOW}$1${RESET}"
}

function success {
  echo "S ${GREEN}$1${RESET}"
}

function error {
  echo "E ${RED}$1${RESET}"
  exit 1
}

