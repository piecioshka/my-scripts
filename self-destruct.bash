#!/usr/bin/env bash

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo -e "ERROR: Please run script like this:\n\t$ source self-destruct.bash\n\tor\n\t$ . self-destruct.bash"
  exit 1
fi

name=$(basename "$(pwd)")

read -p "Are you sure you want to delete "$name" directory? [y/n]: " choice

case $choice in
  Y|y)
    cd ..
    rm -rfv "$name"
    echo -e "Directory \"$name\" was removed successful!"
    ;;
  *)
    echo -e "ERROR: Process was canceled"
    ;;
esac
