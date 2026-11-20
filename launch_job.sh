#!/usr/bin/env bash
set -e
REPO="zoraselle/linenskilletlab"
TAG="golden-comet-clever-badger"
LIB="glued-hole.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
