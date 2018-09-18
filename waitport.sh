#!/bin/bash

# https://github.com/JeroenKnoops/forest-bash/blob/master/waitport.sh

function waitport() {
  set -e
  while ! curl --output /dev/null --silent --head --fail http://localhost:$1; do sleep 1 && echo -n .; done;
  set +e
}
