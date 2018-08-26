#!/usr/bin/env bats

source ./messages.sh

@test "info" {
  run info 'my text'
  [ "$status" -eq 0 ]
  [ "$output" = "I `tput setaf 3`my text`tput sgr0`" ]
}

@test "success" {
  run success 'my text'
  [ "$status" -eq 0 ]
  [ "$output" = "S `tput setaf 2`my text`tput sgr0`" ]
}

@test "error" {
  run error 'my text'
  [ "$status" -eq 1 ]
  [ "$output" = "E `tput setaf 1`my text`tput sgr0`" ]
}