#!/bin/bash
brew install jenv \
 coreutils \
 jq \
 th-ch/youtube-music/youtube-music \
 bluesnooze \
 terminal-notifier \
 wget \
 kubectl \
 yq \
 gnu-sed   \
 kubecolor \
 git   \
 kustomize \
 colordiff \
 vault   \
 tmux   \
 go   \
 helm \
 ag \
 watch \
 pyenv \
 awscli  \
 starkandwayne/cf/spruce \
 rbenv \
 yarn \
 python

jenv enable-plugin export #https://stackoverflow.com/questions/28615671/set-java-home-to-reflect-jenv-java-version


brew install --cask fly
echo "install vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
