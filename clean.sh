#!/bin/bash

printf 'Do you want to remove AutoOL? It will be redownloaded when compile.sh is run again. (y/n)? '
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if [ "$answer" != "${answer#[Yy]}" ];then
    rm -rf work
    rm -rf launcher olauncher
    rm MinecraftLauncher-*-redist.jar
    rm -rf AutoOL/*
elif [ "$answer" != "${answer#[Nn]}" ];then
    rm -rf work
    rm -rf launcher olauncher
    rm MinecraftLauncher-*-redist.jar
else
    echo
    echo "Answer y or n."
fi

