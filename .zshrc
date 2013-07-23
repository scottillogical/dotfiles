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
