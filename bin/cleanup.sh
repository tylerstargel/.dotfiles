#!/bin/bash
#Tells the OS which verison to run

rm ~/.vimrc #deletes this file in the home directory
sed -i 's|source ~/.dotfiles/etc/bashrc_custom||g' ~/.bashrc #finds the following line in the .bashrc file in the home directory and replaces it with an empty line

rm -rf ~/.TRASH #finally remove the TRASH directory


