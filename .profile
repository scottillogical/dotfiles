alias stagingdb2="psql -Upostgres -hstagingdb2.hq.courseadvisor.com"
alias stagingssh2="ssh stagingdb2.hq.courseadvisor.com"
alias growl="growlnotify -s -m done"
alias svnstatus="svn status --ignore-externals"
alias svnup="svn up --ignore-externals"
alias be="bundle exec"
export SVN_EDITOR=emacs
export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'



if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi



export PATH=/Users/sschulthess/Courseadvisor/bin:$PATH
export PATH=/Users/sschulthess/bin:$PATH

export PATH=/Users/sschulthess/CourseAdvisor/svn-misc/:$PATH
export PATH=/Users/sschulthess/CourseAdvisor/svn-misc/fmscripts:$PATH
export PAGER=less
export LESS="-iMSx4 -FX"
export PATH=/opt/local/bin/:/opt/local/lib/postgresql84/bin/:$PATH
export PATH=/Users/sschulthess/.gem/ruby/1.8/bin:$PATH
# MacPorts Installer addition on 2010-02-08_at_05:59:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin/svn
export PATH=$PATH:/opt/local/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info
export PATH=/opt/subversion/bin:$PATH
export PATH=/Users/sschulthess/local/bin/:$PATH
# MacPorts Installer addition on 2010-02-08_at_05:59:44: adding an appropriate MANPATH variable for use with MacPorts.

export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PATH=/opt/local/lib/pgsql8/bin:$PATH

source ~/bin/svn_misc/svn-shortcuts

export PATH=/opt/local/bin/svn-shortcuts/bin/:$PATH

