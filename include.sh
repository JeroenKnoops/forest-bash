#!/bin/bash

# https://github.com/JeroenKnoops/forest-bash/blob/master/include.sh

function include() {
  [[ -f "$1" ]] && source "$1"
  return 0
}
