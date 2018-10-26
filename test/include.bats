#!/usr/bin/env bats

source ./include.sh

@test "include existing file" {
  run include ./examples/include-files/i-exist.txt
  [ "$status" -eq 0 ]
  [ "$output" = "I am." ]
}

@test "include not existing file" {
  run include ./examples/include-files/i-do-not-exist.txt
  [ "$status" -eq 0 ]
  [ "$output" = "" ]
}

@test "include example" {
  run ./examples/include-example.sh
  [ "$status" -eq 0 ]
  [ "$output" = "I am." ]
}
