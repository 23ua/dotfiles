#!/bin/bash

home_folder="$HOME"

handle_file () {
	if [ ! -f $1 ]; then
		echo "Error: no such dotfile: $1"
		return
	fi

	# backup old file
	if [ -h $home_folder/$1 ]; then
		rm $home_folder/$1 && echo "$home_folder/$1 is a symlink; rm $1 performed"
	elif [ -f $home_folder/$1 ]; then
		mv $home_folder/$1 $home_folder/$1.bkp && echo "$home_folder/$1 already exists; moved to $1.bkp"
	fi

	ln -s $(pwd)/$1 $home_folder/$1 && echo "$home_folder/$1 was linked"

}


for dotfile in ".zshrc" ".vimrc" ".tmux.conf" ".zshenv" ".ideavimrc" ".spacemacs"; do
	handle_file $dotfile
done

# create swap and tmp folder for vim
mkdir -p ~/.vim/tmpfiles && echo "mkdir -p ~/.vim/tmpfiles"

