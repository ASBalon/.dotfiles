#!/bin/bash
touch ../.vimrc #prevents remove exception
rm ../.vimrc #removes .vimrc file from home directory
sed ../.bashrc "source ~/.dotfiles/bashrc_custom" #removes specified line from .bashrc file in home directory
rmdir -rf ../.TRASH #removes trash directory from home directory
