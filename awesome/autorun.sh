#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run nitrogen --restore
run picom
run /usr/libexec/geoclue-2.0/demos/agent 
run redshift
run lxpolkit
