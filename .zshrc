
# ANTIGEN CONFIG BELOW
#
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

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=/Users/sschulthess/bin:$PATH

export GEM_SOURCE=http://yarp.dev

export NVM_DIR="/Users/sschulthess/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# huamn readable file size, colors, hdiden files
alias ls='ls -alhG'

# gvm
#[[ -s "/Users/sschulthess/.gvm/scripts/gvm" ]] && source "/Users/sschulthess/.gvm/scripts/gvm"

# completion
zstyle ':completion:*' matcher-list 'l:|=* r:|=*' 
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
autoload -Uz compinit
compinit

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

parse_namespace() {
  sav namespace | cut -f 3 -d ' '
}
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec
#sav_namespace() {
#  sav namespace | cut -f 3 -d ' '
#}
#export PS1 = ${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info) {$(sav_namespace)}
#
sav_nuke() {
  for app in $( sav ls -a --format bland | cut -f1 -d' ' ); do
    sav rm ${app}
    sleep 1
  done
  for svcid in $( sav ls -s --format bland | cut -f2 -d' ' ); do
    sav rmid ${svcid}
    sleep 1
  done
}

# auto ls when you cd
function cd {
  builtin cd "$@" && ls -F 
}

