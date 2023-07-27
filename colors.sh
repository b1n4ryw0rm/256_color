#!/bin/bash

for i in {0..255}; do
  printf "\x1b[38;5;${i}m%-5d" $i
  if (( $i % 15 == 0 )); then
    printf "\n"
  fi
done

echo -e "\x1b[0m" # Reset color to default

