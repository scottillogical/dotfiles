# ANTIGEN CONFIG BELOW
source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
#antigen bundle zsh-users/zsh-completions
#antigen bundle zsh-users/zsh-autosuggestions
#antigen bundle ssh-agent
antigen bundle ruby
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle marzocchi/zsh-notify
antigen bundle robbyrussell/oh-my-zsh plugins/z
antigen apply

# theme
DEFAULT_USER=sschulthess

# self explanitory
DISABLE_AUTO_TITLE=true

#:source ~/.private_settings

# set editor to vim
export VISUAL=vim
export EDITOR=$VISUAL

# type in a project name to name toit

# add sbin to path
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:~/bin
export GO_ROOT=/usr/local
export GEM_SOURCE=http://yarp.dev

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/go
export GOROOT=/usr/local/Cellar/go/
export GOROOT=/usr/local/Cellar/go/1.8/libexec

export CDPATH=~/git:$GOPATH/src/stash.zipcar.com/scm/sav

# http://stackoverflow.com/questions/3964068/zsh-automatically-run-ls-after-every-cd
function chpwd() {
  emulate -L zsh
  ls -a
}

alias terminal-notifier='reattach-to-user-namespace terminal-notifier'
alias s="cd ~/go/src/stash.zipcar.com/scm/sav/savannah.git"
