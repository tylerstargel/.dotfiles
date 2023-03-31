# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
This file contains the following:
syntax on
set number
set autoindent
set ruler
color elflord
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
##.bashrc_custom
This sets up different configuratiions for my .bashrc
The alias of:
cdd = cd ..
lsa = ls -A
lsl = ls -l
targz tarbells a given directory
untar untarbells a given file or directory
trash = replaces rm, so moves a file or directory to .TRASH
rmtrash = deletes the .TRASH directory
There are also functions establishing the alias for targz and untar
## .bashrc
This is my custom .bashrc configuration for Bash.
##Makefile
This make file runs two scripts ./cleanup.sh and ./linux.sh
###Clean Up
This scripts undoes the majority of the commands in ./linux.sh
It removes the ~./vimrc file
And replaces the last line in my .bashrc file "source ~/.dotfiles/etc/bashrc_custom" to an empty line
Finally, it removes the ~/.TRASH
###Linux
This script does multiple things
1. It checks if the correct OS (linux) is being run
2. Then, it creates, if not already created, a /.TRASH/ directory in the home directory
3. If a current ~/.vimrc file exists it is renamed and it is noted in a linuxsetup.log file
4. Then, it redirects the contents of the ~/.dotfiles/etc/vimrc into the new file ~/.vimrc
5. Finally, the line "source ~/.dotfiles/etc/bashrc_custom" is added to the last lin in ~/.bashrc
