#!/bin/bash

# alias yabai="/Users/raj/.config/yabai/src/yabai/bin/yabai"

FILE="mytodo.md"

# Check if the file is open in vim
if pgrep -fl "nvim .*${FILE}" >/dev/null; then
  # If open, get the window id and focus on it
  WINDOW_ID=$(yabai -m query --windows | jq -r '.[] | select(.app == "kitty" and (.title | contains("'${FILE}'"))) | .id')
  WINDOW_NAME=$(yabai -m query --windows | jq -r '.[] | select(.app == "kitty" and (.title | contains("'${FILE}'"))) | .title')

  echo "window name: $WINDOW_NAME ||"

  echo "window check: $WINDOW_ID"

  if [ -n "$WINDOW_ID" ]; then
    yabai -m window --focus "$WINDOW_ID"
  else
    echo "File is open but window ID not found."
  fi
else
  # If not open, open the file with vim
  /Applications/kitty.app/Contents/MacOS/kitty --single-instance --title "nvim mytodo.md" -d ~ nvim mytodo.md
  WINDOW_NAME=$(yabai -m query --windows | jq -r '.[] | select(.app == "kitty")')

  echo "window name: $WINDOW_NAME"

fi
