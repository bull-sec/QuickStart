#!/bin/bash

## Set a PROPER shell
chsh -s /bin/bash

## Make it functional
cp .bashrc $HOME/.bashrc

## Make it fancy
cp .inputrc $HOME/.bashrc

## Make it RAIN!
mkdir $HOME/.tmux
cp .tmux.conf $HOME/.tmux/.tmux.conf

## Final touches
cd $HOME
ln -s .tmux/.tmux.conf
cp .vimrc ~/.vimrc

echo -e "\nSystem installed, enjoy your new terminal environment\n"

