# ANTIGEN CONFIG BELOW
source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle kube-ps1
#antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
#antigen bundle ssh-agent
antigen bundle ruby
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle robbyrussell/oh-my-zsh plugins/z
antigen bundle
antigen apply

# theme
DEFAULT_USER=sschulthess

# self explanitory
DISABLE_AUTO_TITLE=true

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

[[ -s "/Users/scottschulthess/.gvm/scripts/gvm" ]] && source "/Users/scottschulthess/.gvm/scripts/gvm"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
alias python=python3
alias dl='docker ps -l -q'


command_exists () {
  type "$1" &> /dev/null ;
}
if command_exists rbenv ; then
  eval "$(rbenv init -)"
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/scottschulthess/.sdkman"
[[ -s "/Users/scottschulthess/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/scottschulthess/.sdkman/bin/sdkman-init.sh"
export GRADLE_HOME="/Users/scottschulthess/.sdkman/candidates/gradle/current"

export GO111MODULE=on

alias cd='cd -P' # https://unix.stackexchange.com/questions/55713/make-cd-follow-symbolic-links

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


autoload -U colors; colors

# Kube completion
source <(kubectl completion zsh)

# Colorize the ls output ##
alias ls='ls --color=auto'
# Increase zsh history
HISTSIZE=10000000
SAVEHIST=10000000
