# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc (located in etc directory)
This is my custom .vimrc configuration for Vim.
## .bashrc (located in etc directory)
This is my custom .bashrc configuration for Bash.
## linux.sh (located in bin directory)
This is a script. This script is ran when make is called without an argument. This script implements the .vimrc and .bashrc configurations by overwriting the vimrc file in the home directory and adding a source command to the end of bashrc file in the home directory. This script also creates a trash directory in the home directory.
## clean.sh (located in bin directory)
This is a script. This script undos the actions of the linux.sh script by deleting the vimrc file, removing the source command from the bashrc file, and deleting the trash directory.
## Makefile
Targets of linux and clean which run respective scripts. clean target is a prerequesite of the linux target. Default target of linux.
