#! /bin/bash

# nmap custom ip scanner script
echo "[+] Enter the starting IP Address: "
read firstIP

echo "[+] Enter the last octet of the last IP Address: "
read lastIP

echo "[+] Enter the port you want to scan: "
read port

nmap -sT $firstIP-$lastIP -p $port >/dev/null -oG CustomScanner

cat CustomScanner | grep open > CustomScannerOPEN

cat CustomScannerOPEN
