
# MacPorts Installer addition on 2011-03-26_at_01:55:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$HOME/android-sdk-macosx/platform-tools:$HOME/node/bin:/Applications/PyCharm.app/Contents/MacOS:$HOME/arcanist/arcanist/bin:$HOME/gradle/bin:$HOME/humble/tools:$HOME/pyclops/bin:$PATH
export PATH=${PATH}:./tools
# Finished adapting your PATH environment variable for use with MacPorts.

alias "r"="cd $HOME/humble"
alias "f"="open ."
alias "t"="./tools/direct_test.py"
alias "m"="pyclops upload_asm"
alias "server"="~/humble/tools/devserver.py --nogrunt --modules api --modules login --modules crons --modules accounting --modules dispatch"
alias "uploader"="dev_appserver.py uploader.yaml --host=0.0.0.0 --port=9090 --admin_port=9091 --skip_sdk_update_check"
alias "localshell"="PYTHONPATH=. $HOME/tools/scripts/api_shell.py dev~hr-humblebundle -s localhost:8080 --email=aaron@humblebundle.com --password=123"
alias "remoteshell"="PYTHONPATH=. $HOME/tools/scripts/api_shell.py hr-humblebundle --secure --email=aaron@humblebundle.com --password=xnhlgdnnjxfbuwrv"
alias "product"="./tools/open_admin.py Product"
alias "displayitem"="./tools/open_admin.py DisplayItem"
alias "forgot-file"="git commit --amend -C HEAD"
alias "co"="git checkout"
alias "branchlog"="git log HEAD ^master --no-merges"
alias "latest-branches"="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias "speak"="pbpaste|say"
alias "rbd"="rbt post --parent master -o"
alias "versions"="git tag | grep -E 'humblebundle-[0-9]{4}' | sort | tail"
alias pyc-clean='find . -name "*.pyc" -exec rm -f {} \;'
alias watch='_() { while :; do clear; $1; sleep 2; done }; _'
alias remove-merged='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias reload-profile='source $HOME/.profile'
function proml {
local BLUE="\[\033[0;34m\]"
local RED="\[\033[0;31m\]"
local LIGHT_RED="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local LIGHT_GREEN="\[\033[1;32m\]"
local WHITE="\[\033[1;37m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local END_COLORS="\[\033[0m\]"
function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
function parse_git_branch {
  ref=$(git_branch) || return
  echo "("$(git_branch)")"
}
PS1="${TITLEBAR}\
$BLUE\D{%T}$END_COLORS \u@\h:\w$GREEN \$(parse_git_branch)\
$END_COLORS\$ "
PS2='> '
PS4='+ '
}
proml

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

source $HOME/git-completion.bash
# Finished adapting your PATH environment variable for use with MacPorts.
export EDITOR=vi


# The next line updates PATH for the Google Cloud SDK.
source '/Users/am/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/am/google-cloud-sdk/completion.bash.inc'


