alias growl="growlnotify -s -m done"
alias be="bundle exec"



if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi


export PATH="~/bin":$PATH
export PAGER=less
export LESS="-iMSx4 -FX"
