#!/bin/sh
cd "/Users/aashviktyagi/Library/Application Support/minecraft/"
echo "mc worlds:"
ls -d "modws"/*/ | awk '{print NR-1 ": " $0}'
read -p "mc world index: " worldno
world=$(ls -d "modws"/*/ | sed -n "$((worldno + 1))p")
echo "shifting to world: $world"
rm -rf mods*
echo "modfolder cleared"
mkdir mods
echo "folder remade"
cp $world* mods
echo "done copying"
echo "enjoy"
exit