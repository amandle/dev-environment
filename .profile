
# MacPorts Installer addition on 2011-03-26_at_01:55:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/Users/am/android-sdk-macosx/platform-tools:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias "r"="cd /Users/am/humble"
alias "f"="open ."
alias "t"="./tools/clitest.py"
alias "server"="dev_appserver.py . --address=0.0.0.0 --skip_sdk_update_check"
alias "localshell"="PYTHONPATH=. remote_api_shell.py dev~hr-humblebundle -s localhost:8080"
alias "remoteshell"="PYTHONPATH=. remote_api_shell.py hr-humblebundle"
alias "co"="git checkout"
alias "branchlog"="git log HEAD ^master --no-merges"
alias "speak"="pbpaste|say"
alias pyc-clean='find . -name "*.pyc" -exec rm -f {} \;'

function proml {
local BLUE="\[\033[0;34m\]"
local RED="\[\033[0;31m\]"
local LIGHT_RED="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local LIGHT_GREEN="\[\033[1;32m\]"
local WHITE="\[\033[1;37m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local END_COLORS="\[\033[0m\]"
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}


PS1="${TITLEBAR}\
\u@\h:\w$GREEN \$(parse_git_branch)\
$END_COLORS\$ "
PS2='> '
PS4='+ '
}
proml

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

source ~/git-completion.bash
##
# Your previous /Users/am/.profile file was backed up as /Users/am/.profile.macports-saved_2012-01-12_at_14:14:44
##

# MacPorts Installer addition on 2012-01-12_at_14:14:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

