#!/usr/bin/env bash

echo "[+] Decompression of *.tar.gz started...";

for a in `ls -1 *.tar.gz`;
  do gzip -dc $a | tar xf -; echo "[-] File:" $a;
done

echo "[+] Done";
