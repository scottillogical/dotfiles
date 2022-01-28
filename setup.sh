mv ~/.bashrc ~/.bashrc.bak
mkdir -p ~/bin

ln -s ~/dotfiles/.ackrc ~/.ackrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.thymerc ~/.thymerc
ln -s ~/dotfiles/cheapwatch ~/bin/cheapwatch
mkdir ~/.vim/backup
mkdir ~/.vim/tmp

curl -L git.io/antigen > ~/dotfiles/antigen.zsh

# Add global gitignore and configure git to use it
ln -s ~/dotfiles/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore_global

vim +PluginInstall +qall
