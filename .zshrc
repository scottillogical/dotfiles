# ANTIGEN CONFIG BELOW
source ~/dotfiles/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle MichaelAquilina/zsh-auto-notify
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle kube-ps1
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle robbyrussell/oh-my-zsh plugins/z
antigen bundle
antigen apply

# Add k8s target to prompt
# https://github.com/jonmosco/kube-ps1
export KUBE_PS1_NS_ENABLE=false
export KUBE_PS1_SEPARATOR=''
export KUBE_PS1_SYMBOL_DEFAULT=''
export KUBE_PS1_SYMBOL_ENABLE=false

DISABLE_AUTO_TITLE=true

# set editor to vim
export VISUAL=vim
export EDITOR=$VISUAL

# add sbin to path
export PATH="/usr/local/sbin:$PATH"
export PATH=~/bin:$PATH
export GO_ROOT=/usr/local

#snek
alias python=python3

command_exists () {
  type "$1" &> /dev/null ;
}
if command_exists rbenv ; then
  eval "$(rbenv init -)"
fi

# https://unix.stackexchange.com/questions/55713/make-cd-follow-symbolic-links
alias cd='cd -P'

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/Users/scottschulthess/Library/Python/3.8/bin:$PATH"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export GO111MODULE=on

# Go version manage
source /Users/scottschulthess/.gvm/scripts/gvm

autoload -U colors; colors

# Kube completion
source <(kubectl completion zsh)


# Colorize the ls output ##
alias ls='ls --color=auto'
# Increase zsh history
HISTSIZE=30000000
SAVEHIST=30000000

# Disable AWS pager https://stackoverflow.com/questions/60122188/how-to-turn-off-the-pager-for-aws-cli-return-value
export AWS_PAGER=""
alias k=kubectl

# https://blog.mact.me/2012/09/06/using-watch-with-a-bash-alias
alias watch='watch '

# Alias for typora https://support.typora.io/Use-Typora-From-Shell-or-cmd/
alias typora="open -a typora"


# Use colorized diffs with kubctl
export KUBECTL_EXTERNAL_DIFF="colordiff -N -u"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/scottschulthess/.sdkman"

[[ -s "/Users/scottschulthess/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/scottschulthess/.sdkman/bin/sdkman-init.sh"
export GRADLE_HOME="/Users/scottschulthess/.sdkman/candidates/gradle/current"

source ~/dotfiles/.privaterc

export DOCKER_DEFAULT_PLATFORM=linux/amd64

# Enable zsh autocompletion
autoload -U compinit; compinit
source <(savkube completion zsh)

PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
PROMPT="$(kube_ps1)%(?:%{%}➜ :%{%}➜)%{$fg[cyan]%}%~%{$reset_color%} "'$(git_prompt_info)'"
$| "

# ZSH Auto Notify https://github.com/MichaelAquilina/zsh-auto-notify
export AUTO_NOTIFY_THRESHOLD=35
AUTO_NOTIFY_IGNORE+=("tmux")
AUTO_NOTIFY_IGNORE+=("git")
AUTO_NOTIFY_IGNORE+=("fly")

alias nvim=vim

alias vkustomize=kustomize

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
PROMPT='$(kube_ps1)'$PROMPT

export GO11MODULE=on

# Configure java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export JAVA_HOME="$(jenv prefix)"

