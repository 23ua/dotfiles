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
ENABLE_CORRECTION="true"

# change the command execution timestamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="vim"

# auto cd
setopt AUTO_CD

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# newer php
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"

. ~/.aliases