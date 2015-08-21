#!/bin/sh

echo "This will install os packages, vim plugins and any other env tools"

./install_packages.sh
./link_dotfiles.sh
./install_env.sh

echo "Env installation done"

