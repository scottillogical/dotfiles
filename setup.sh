#!/bin/bash
mv ~/.bashrc ~/.bashrc.bak
set -eoux
mkdir -p ~/bin

ln -fs ~/dotfiles/.ackrc ~/.ackrc
ln -fs ~/dotfiles/.vimrc ~/.vimrc
ln -fs ~/dotfiles/.vim ~/.vim
ln -fs ~/dotfiles/.bashrc ~/.bashrc
ln -fs ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -fs ~/dotfiles/.gitconfig ~/.gitconfig
ln -fs ~/dotfiles/.zshrc ~/.zshrc
ln -fs ~/dotfiles/.thymerc ~/.thymerc
ln -fs ~/dotfiles/cheapwatch ~/bin/cheapwatch
mkdir ~/.vim/backup
mkdir ~/.vim/tmp

curl -L git.io/antigen > ~/dotfiles/antigen.zsh

# Add global gitignore and configure git to use it
ln -fs ~/dotfiles/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore_global

vim +PluginInstall +qall
