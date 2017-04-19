#!/bin/bash


#### Variables

dir=~/dotfiles		# dotfiles directory
olddir=~/dotfiles_old	# old dotfiles backup directory
files=".vimrc .vim"	# list of files/folders to symlink in homedir

####

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in~"
mkdir -p $olddir
echo "...done"

# change to dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move dotfiles in homedir to dotfiles_old dir, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/$file
done

