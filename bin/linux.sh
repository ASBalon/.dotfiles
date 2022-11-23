#!/bin/bash

touch linuxsetup.log #creates file if it does not exist
var_uname=$(uname) #stores output of uname in variable
if [ "$var_uname"!="LINUX"]; then #compare strings to make sure system is linux
	echo "System matching error" >> linuxsetup.log
       	#appends error msg to log file
	exit #exits program
fi
mkdir -p ../.TRASH #makes trash directory in home if it does not exist

FILE=../.vimrc #sets varaiable for existance check
if test -f "$FILE"; then #checks if this file exists
	echo ".vimrc changed to .bup_vimrc" >> linuxsetup.log
	#logs name change to log file
	mv ../.vimrc ../.bup_vimrc #changes file name
fi
touch ../.vimrc #creates file if it does not exist
echo ../etc/vimrc > ../.vimrc
#overwrites .vimrc file with contents from bin/vimrc
touch ../.bashrc #creates file if it does not exist
echo "source ∼/.dotfiles/etc/bashrc_custom" >>../.bashrc
#adds quoted line to end of .bashrc file
