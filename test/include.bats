#!/usr/bin/env bats

source ./include.sh

@test "include example" {
  run ./examples/include-example.sh
  [ "$status" -eq 0 ]
  [ "$output" = "I am." ]
}
