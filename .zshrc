# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"
export ZSH_THEME="afowler"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following lne if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="false"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby svn brew gem rails rails3 ssh-agent rvm termsupport)
source $ZSH/oh-my-zsh.sh


# Customize to your needs...
export PATH=./bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/bin:/Users/humblepatience/bin/svn_misc/:opt/local/bin/:/opt/local/lib/postgresql84/bin/:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/humblepatience/bin:/Users/humblepatience/bin/svn_misc:/usr/local/Cellar/libxml2/2.7.8/bin
source /Users/humblepatience/bin/svn_misc/svn-shortcuts
export PATH=/usr/local/bin:$PATH
export PATH=./bin:$PATH

#unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
#export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
#export EDITOR='mvim'
export EDITOR='vim'


export SVN_ROOT="svn+ssh://trac.hq.courseadvisor.com/home/svn/" 

alias svnstatus="svn status --ignore-externals"
alias svnup="svn up --ignore-externals"
alias svnswitch="svn switch --ignore-externals"
export PAGER=less

#RPROMPT='[%~]' 
#PROMPT='[%~]' 
#PROMPT='%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} ' 
#echo -ne "\e]1;$PWD\a"


# [[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


export PAGER=less
export LESS="-iMSx4 -FX"

export LESS="-erX"
export MYSQL_PS1=" [\d]> "
#export EDITOR="$HOME/bin/mate -w"
  

[[ $TERM = "screen" ]] && rvm use default
DISABLE_AUTO_TITLE=true
export DISABLE_AUTO_TITLE="true"
rvm_project_rvmrc=1
cd .
source .rvmrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


if growlnotify -h &>/dev/null; then
    preexec() {
        zsh_growl_cmd=$1
        zsh_growl_time=`date +%s`
    }

    precmd() {
        if (( $? == 0 )); then
            zsh_growl_status=done
        else
            zsh_growl_status=fail
        fi
        if [[ "${zsh_growl_cmd}" != "" ]]; then
            if (( `date +%s` - ${zsh_growl_time} > 5 )); then
                growlnotify -m ${zsh_growl_cmd} ${zsh_growl_status}
            fi
        fi
        zsh_growl_cmd=
    }
fi
