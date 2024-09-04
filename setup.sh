#!/bin/bash
mv ~/.bashrc ~/.bashrc.bak
set -eoux
mkdir -p ~/bin

ln -fs ~/dotfiles/.ackrc ~/.ackrc
ln -fs ~/dotfiles/.vimrc ~/.vimrc
ln -fs ~/dotfiles/.bashrc ~/.bashrc
ln -fs ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -fs ~/dotfiles/.gitconfig ~/.gitconfig
ln -fs ~/dotfiles/.zshrc ~/.zshrc
ln -fs ~/dotfiles/.thymerc ~/.thymerc
ln -fs ~/dotfiles/cheapwatch ~/bin/cheapwatch
mkdir -p ~/.vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/tmp
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -L git.io/antigen > ~/dotfiles/antigen.zsh

# Add global gitignore and configure git to use it
ln -fs ~/dotfiles/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore_global

echo "open vim and run :PlugInstall"
vim +PluginInstall +qall
