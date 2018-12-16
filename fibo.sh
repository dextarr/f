#!/bin/bash -x

fibo2 () {
  i=$1

  if [ $# -ne 1 ]
  then
    exit 11
  fi

  echo "$i" | grep -qE "(^0$|^[1-9][0-9]*$)"
  if [ $? -ne 0 ]
  then
    exit 12
  fi

  case $i in
    0|1) echo $i
         ;;
      *) echo $(( $(fibo2 $((i - 1))) + $(fibo2 $((i - 2))) ))
         ;;
  esac
}
