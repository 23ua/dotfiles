#!/bin/bash
echo "[!] vim and zsh must already be installed [!]"

echo installing Vundle...
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo linking dotfiles...
./link_dotfiles.sh

echo installing oh-my-zsh...
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo changing default shell...
chsh -s /bin/zsh

echo installing vundle...
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

read -p "Wanna install spacemacs? (y/N)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo installing spacemacs...
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

echo env install done


