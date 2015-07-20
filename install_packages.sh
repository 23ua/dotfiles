#!/bin/sh

command_exists() {
	command -v "$@" > /dev/null 2>&1
}

lsb_dist=''
if command_exists lsb_release; then
	lsb_dist="$(lsb_release -si)"
fi
if [ -z "$lsb_dist" ] && [ -r /etc/lsb-release ]; then
	lsb_dist="$(. /etc/lsb-release && echo "$DISTRIB_ID")"
fi
if [ -z "$lsb_dist" ] && [ -r /etc/debian_version ]; then
	lsb_dist='debian'
fi
if [ -z "$lsb_dist" ] && [ -r /etc/fedora-release ]; then
	lsb_dist='fedora'
fi
if [ -z "$lsb_dist" ] && [ -r /etc/centos-release ]; then
	lsb_dist='centos'
fi
if [ -z "$lsb_dist" ] && [ -r /etc/os-release ]; then
	lsb_dist="$(. /etc/os-release && echo "$ID")"
fi


lsb_dist="$(echo "$lsb_dist" | tr '[:upper:]' '[:lower:]')"

echo "installing packages..."

case "$lsb_dist" in
	arch)

	echo "sudo pacman -S vim zsh tmux"	

	sudo pacman -S vim zsh tmux
	exit 0
	;;

	ubuntu|debian|linuxmint|'elementary os'|kali)
	
	echo "sudo apt-get install vim zsh tmux"

	sudo apt-get install vim zsh tmux
	exit 0
	;;
esac
