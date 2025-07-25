# ANTIGEN CONFIG BELOW
alias k=kubectl
alias s=savkube
alias nvim=vim
source ~/dotfiles/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle MichaelAquilina/zsh-auto-notify
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle romkatv/zsh-defer
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
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
export PATH="~/Library/Python/3.8/bin:$PATH"



# Go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export GO111MODULE=on

# Go version manage
#source ~/.gvm/scripts/gvm
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


export GRADLE_HOME="~/.sdkman/candidates/gradle/current"
#

source ~/.privaterc


PROMPT="$(kube_ps1)%(?:%{%}➜ :%{%}➜)%{$fg[cyan]%}%~%{$reset_color%} "'$(git_prompt_info)'"
$| "

# ZSH Auto Notify https://github.com/MichaelAquilina/zsh-auto-notify
export AUTO_NOTIFY_THRESHOLD=35
AUTO_NOTIFY_IGNORE+=("tmux")
AUTO_NOTIFY_IGNORE+=("git")
AUTO_NOTIFY_IGNORE+=("fly")


alias vkustomize=kustomize

PROMPT='$(kube_ps1)'$PROMPT


# Configure java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


alias kubectl="kubecolor"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

PATH=$PATH:$(pyenv root)/shims
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

export DOCKER_BUILDKIT=1
export DOCKER_DEFAULT_PLATFORM=linux/amd64

#https://github.com/rbenv/ruby-build/issues/1691
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

# pipx
export PATH="$HOME/.local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="$HOME/bin:$PATH"
export DOCKER_DEFAULT_PLATFORM=linux/amd64
# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  echo $nvmrc_path
  echo "$(nvm version)"
  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
  echo "done"
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
COMPOSE_BAKE=true
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
