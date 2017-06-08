#!/bin/sh
data=$(cat data.txt)
while read -r line; do
  IFS=' ' read -r -a array <<< "$line"
  name="${array[0]}.apk"
  durl=${array[1]}
  if [ ! -f $s_dir ]; then
    curl -o "${name}" $durl
  fi
  ./sdkauto.sh "${name}" "sdk.apk"
done <<< "$data"

ls
