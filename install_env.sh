#!/bin/bash
echo "[!] vim and zsh must already be installed [!]"

echo linking dotfiles...
./link_dotfiles.sh

echo installing oh-my-zsh...
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo changing default shell...
chsh -s /bin/zsh

echo installing vundle...
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo env install done


