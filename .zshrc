# ANTIGEN CONFIG BELOW
source ~/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
#antigen bundle zsh-users/zsh-completions
#antigen bundle zsh-users/zsh-autosuggestions
antigen bundle ssh-agent
antigen bundle ruby
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle marzocchi/zsh-notify --branch=next-iterm
antigen bundle robbyrussell/oh-my-zsh plugins/z
antigen apply

# theme 
DEFAULT_USER=sschulthess

# self explanitory
DISABLE_AUTO_TITLE=true

source ~/.zipcar_settings

# set editor to vim
export VISUAL=vim
export EDITOR=$VISUAL

# type in a project name to name toit

# add sbin to path
export PATH="/usr/local/sbin:$PATH"
export PATH=/Users/sschulthess/bin:$PATH
export GEM_SOURCE=http://yarp.dev

# human readable file size, colors, hdiden files
#alias ls='ls -alhG'

# completion
#zstyle ':completion:*' matcher-list 'l:|=* r:|=*' 
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#autoload -Uz compinit
#compinit

# http://unix.stackexchange.com/questions/114074/tab-completion-of-in-zsh
#zstyle ':completion:*' special-dirs true

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Node version manager
export NVM_DIR="/Users/sschulthess/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Java version manager jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# I think for go?
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/sschulthess/.sdkman"
[[ -s "/Users/sschulthess/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sschulthess/.sdkman/bin/sdkman-init.sh"

export CDPATH=~/git:~/

# http://stackoverflow.com/questions/3964068/zsh-automatically-run-ls-after-every-cd
function chpwd() {
  emulate -L zsh
  ls -a
}

