#!/bin/bash

TERMINAL="/usr/bin/kitty" 

$TERMINAL --title "Pacman Update" bash -c '
    echo "==> Start update...";
    sudo pacman -Syu;
    echo "";
    echo "==> Done.";
    sleep 1
'
