#!/bin/bash

echo "input: $1"

if [[ "$1" =~ ^[1-9]$ ]]; then
  # Converting numbers to their corresponding keycode in macos
  case $1 in
  1) target=18 ;;
  2) target=19 ;;
  3) target=20 ;;
  4) target=21 ;;
  5) target=23 ;;
  6) target=22 ;;
  7) target=26 ;;
  8) target=28 ;;
  9) target=25 ;;
  esac
fi

if [[ "$1" =~ ^[1-9]$ ]]; then
  osascript -e "tell application \"System Events\" to key code $target using {control down}"
fi
