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

@test "warn" {
  run warn 'my text'
  [ "$status" -eq 0 ]
  [ "$output" = "W `tput setaf 4`my text`tput sgr0`" ]
}

@test "big-figlet" {
  skip
  run big 'blurk'

  blurk=$(cat <<-EOM
 _    _          _   
| |__| |_  _ _ _| |__
| '_ \ | || | '_| / /
|_.__/_|\_,_|_| |_\_\\
                     
EOM
  )

  [ "$status" -eq 0 ]
  set -- "$blurk"
  declare -a Array=($*)

  [ "${lines[0]}" = "${Array[0]}" ]
  [ "${lines[1]}" = "${Array[1]}" ]
  [ "${lines[2]}" = "${Array[2]}" ]
  [ "${lines[3]}" = "${Array[3]}" ]
  [ "${lines[4]}" = "${Array[4]}" ]
}

@test "big-no-figlet" {
  run big 'blurk'
  [ "$output" = "blurk" ]
}

@test "message example" {
  run ./examples/messages-example.sh
  [ "$status" -eq 0 ]
  [ "$output" = "I `tput setaf 3`scripts installed`tput sgr0`" ]
}