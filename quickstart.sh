#!/bin/bash

## Install Some Basics
apt update  && apt install vim git curl wget

## Set a PROPER shell
chsh -s /bin/bash

## Make it functional
cp .bashrc $HOME/.bashrc

## Make it fancy
cp .inputrc $HOME/.inputrc

## Install FZF
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install

## Install BAT
wget $(curl -s https://api.github.com/repos/sharkdp/bat/releases/latest | grep browser_download_url.*deb | cut -d : -f 2,3 | grep amd | grep -v musl | sed 's/"//g')
dpkg -i bat_*_amd64.deb

## Make it RAIN!
mkdir $HOME/.tmux
cp .tmux.conf $HOME/.tmux/.tmux.conf

# Make VIM great again!
cp .vimrc $HOME/.vimrc

## Final touches
cd $HOME
ln -s .tmux/.tmux.conf

echo -e "\nSystem installed, enjoy your new terminal environment\n"

