#!/bin/bash
#Telling which version to run

#Establishing variables for comparison
LINUX="Linux"
UNAME=$(uname)

if [[ "$UNAME" != "$LINUX" ]]; then #if the OS is not Linux then send an error message and exit
	echo "ERROR --> The OS isn't Linux" >> linuxsetup.log #redirecting the msg to a .log file
	exit
else
	mkdir -p ~/.TRASH 
	#checking if the directory already exists or not
        if [[ -f "~/.vimrc" ]]; then #if this file is already existing then...
		mv ~/.vimrc .bup_vimrc 
		#renaming the file to .bup_vimrc if it previously existed
		echo "The file .vimrc has been renamed to .bup_vimrc" >> linuxsetup.log
		#redirecting the output if this msg into appending to the same .log file 
        fi
	#closing the if statement
        cat ~/.dotfiles/etc/vimrc > ~/.vimrc
	#redirect the output of the current directory's vimrc into a new file in the home directory 
        echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc 
	#finally add the following string to the very end of the .bashrc file in the home directory
fi
