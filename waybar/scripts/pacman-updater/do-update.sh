#!/bin/bash

TERMINAL="/usr/bin/kitty" 

$TERMINAL --title "Pacman Update" bash -c '
    echo "==> start update...";
    sudo pacman -Syu;
    echo "";
    echo "==> Update done. Press Enter to close";
    read
'
