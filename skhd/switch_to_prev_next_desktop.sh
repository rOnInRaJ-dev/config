#!/bin/bash

# $1: 1 if next; 0 if prev

# Reading input and setting arguments
if [[ "$1" -eq 1 ]]; then
  args="--next-space"
else
  args="--prev-space"
fi
echo " '$args'"

# Execute script
# executable path: /Users/raj/programming_stuff/SpaceInfo/Build/Products/Debug/SpaceInfo
exec="/Users/raj/programming_stuff/SpaceInfo/Build/Products/Debug/SpaceInfo $args"
echo "exec: '/Users/raj/programming_stuff/SpaceInfo/Build/Products/Debug/SpaceInfo $args'"
targetSpace=$($exec)
echo $targetSpace

# switch to space
# spaceExec=$("/Users/raj/.config/skhd/switch_to_desktop.sh $targetSpace")
# ($spaceExec)

# sh switch_to_desktop.sh $targetSpace
sh /Users/raj/.config/skhd/switch_to_desktop.sh $targetSpace
