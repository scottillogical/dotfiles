alias stagingdb2="psql -Upostgres -hstagingdb2.hq.courseadvisor.com"
alias stagingssh2="ssh stagingdb2.hq.courseadvisor.com"
alias growl="growlnotify -s -m done"
export EDITOR='mvim -f -c "au VimLeave * !open -a iTerm"'


alias svnstatus="svn status --ignore-externals"
alias svnstat="svn status --ignore-externals"
alias svnup="svn up --ignore-externals"
alias svnswitch="svn switch --ignore-externals"
export PAGER=less
export LESS="-iMSx4 -FX"

# ----------------------------------------------------------------------
# LS AND DIRCOLORS
# ----------------------------------------------------------------------

# we always pass these to ls(1)
LS_COMMON="-hBG"

# if the dircolors utility is available, set that up to
dircolors="$(type -P gdircolors dircolors | head -1)"
test -n "$dircolors" && {
    COLORS=/etc/DIR_COLORS
    test -e "/etc/DIR_COLORS.$TERM"   && COLORS="/etc/DIR_COLORS.$TERM"
    test -e "$HOME/.dircolors"        && COLORS="$HOME/.dircolors"
    test ! -e "$COLORS"               && COLORS=
    eval `$dircolors --sh $COLORS`
}
unset dircolors

# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
HII="\[\033[0;31m\]" #change this for letter colors
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"
 

### end

# setup the main ls alias if we've established common args
test -n "$LS_COMMON" &&
alias ls="command ls $LS_COMMON"

# these use the ls aliases above
alias ll="ls -l"
alias l.="ls -d .*"


export TODOIST_API_TOKEN=8053001934794572b4eef278f8c9306aa4f69b37
export TODOIST_DEFAULT_PROJECT_ID=1086657

export SVN_ROOT=svn+ssh://trac.hq.courseadvisor.com/home/svn
#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad
#sets up the prompt color (currently a green similar to linux terminal)
#export PS1='\[\033[00;32m\]\u@\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\$ '
export PS1='\[\033[00;34m\]\w\[\033[00m\]\$ '
#export PROMPT_COMMAND='echo -ne "\033]0;${t} ${USER}@${HOSTNAME}: ${PWD}\007"'
export PROMPT_COMMAND='echo -ne "\033]0;${t} ${PWD}\007"'

#enables color for iTerm
export TERM=xterm-color
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

export TERM=vt100 # for Byobu, disable if you don't use
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

##
# Your previous /Users/sschulthess/.bash_profile file was backed up as /Users/sschulthess/.bash_profile.macports-saved_2010-08-02_at_10:24:38
##

# MacPorts Installer addition on 2010-08-02_at_10:24:38: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/opt/local/bin/:/opt/local/lib/postgresql84/bin/":$PATH
export PATH=/Users/sschulthess/.gem/ruby/1.8/bin:$PATH

if [ -f /opt/local/etc/bash_completion ]; then
   . /opt/local/etc/bash_completion
   echo "bash completion loaded"
fi

source ~/bin/svn_misc/svn-shortcuts 
export PATH=~/bin/svn_misc/:$PATH

export PATH="/usr/local/bin:$PATH"
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"



tab()
{
        osascript -e "
        tell application \"iTerm\"
         tell the current terminal
          set currentSession to current session
          launch session \"Default Session\"
          tell the last session
           write text \"cd $(pwd)\"
					 write text \"t=$t\"
           write text \"$*\"
          end tell
         end tell
        end tell"
}



start_rails()
{
	       osascript -e "
        tell application \"iTerm2\"
         tell the current terminal
          set currentSession to current session
          launch session \"Default Session\"
          tell the last session
           write text \"cd $(pwd)\"
           write text \"t=server\"
           write text \"rails s -p $1\"
          end tell
         end tell
        end tell"
	       osascript -e "
        tell application \"iTerm2\"
         tell the current terminal
          set currentSession to current session
          launch session \"Default Session\"
          tell the last session
           write text \"cd $(pwd)\"
           write text \"t=console\"
           write text \"rails c\"
          end tell
         end tell
        end tell"

	       osascript -e "
        tell application \"iTerm2\"
         tell the current terminal
          set currentSession to current session
          launch session \"Default Session\"
          tell the last session
           write text \"cd $(pwd)\"
           write text \"t=log\"
           write text \"tail -f log/development.log\"
          end tell
         end tell
        end tell"
	 }

export PATH=$PATH:~/bin


#export PATH=/Users/humblepatience/.rvm/gems/ruby-1.9.2-p0/gems/subwrap-0.5.1/bin/:$PATH
##export PATH=`ls -dt --color=never /usr/lib/ruby/gems/1.8/gems/svn-command* | head -n1`/bin:$PATH
#export PATH=/Users/humblepatience/.rvm/gems/ruby-1.9.2-p0/gems/svn-command-0.2.15/bin/:$PATH
source  /Users/humblepatience/bin/bash_completion_svn.sh
#source  /Users/humblepatience/bin/bash_completion_apache_project.sh
