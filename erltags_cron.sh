#!/bin/bash
# add this script to cron like this:
# * * * * * /path/to/dotfiles/erltags_cron.sh /path/to/project/folder

~/.vim/bundle/vim-erlang-tags/bin/vim-erlang-tags.erl $1
echo "Erlang ctags for folder $1 updated" | logger
