# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# theme
ZSH_THEME="agnoster"

# default user for theme not to show user@host locally
DEFAULT_USER="the23ua"

# how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# enable command auto-correction.
ENABLE_CORRECTION="false"

# change the command execution timestamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colorize docker sublime httpie)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="vim"

# set Java home on OS X
if [ $(uname) = "Darwin" ]; then
	export JAVA_HOME=$(/usr/libexec/java_home)
fi

# auto cd
setopt AUTO_CD

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# newer php; only for OS X
if [ $(uname) = "Darwin" ]; then
	export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
fi

# add haskell binaries to path
if [ $(uname) = "Darwin" ]; then
	export PATH="$HOME/Library/Haskell/bin:$PATH"
fi

# fix problem with molokai vim theme under tmux
if [ $(uname) = "Linux" ]; then
    alias tmux="TERM=screen-256color-bce tmux"
fi

# fix ack perl package problem on arch linux
if [ $(uname) = "Linux" ]; then
    export PATH="$PATH:/usr/bin/vendor_perl"
fi

alias erltags="~/.vim/bundle/vim-erlang-tags/bin/vim-erlang-tags.erl"

if [[ -f ~/.aliases || -h ~/.aliases ]]; then
	. ~/.aliases
fi

