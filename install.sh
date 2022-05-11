#!/bin/bash
if ! command -v brew &> /dev/null
then
  echo "[brew] installing"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "[brew] detcted"
fi
if ! command -v safe &> /dev/null
then
  echo "[safe] installing"
  curl -fL https://github.com/starkandwayne/safe/releases/latest/download/safe-darwin-amd64 -o ~/bin/safe
  chmod a+x ~/bin/safe
else
  echo "[safe] detected"
fi

brew install git
brew install kustomize
brew install colordiff
brew install tmux
brew install go


echo "install vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
