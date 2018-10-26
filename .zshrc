# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/aaronmandle/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="amandle"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, vagrant)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
DEFAULT_USER="aaronmandle" 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

alias "r"="cd $HOME/affirm/all-the-things"
alias "f"="open ."
alias "d"="git diff head"
alias "i"="ptpython"
alias "b"="git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:reset)%(subject)|%(color:magenta)%(authorname)%(color:reset)'|column -ts'|'| head -n 20"
alias "co"="git checkout"
alias "branchlog"="git log HEAD ^master --no-merges"
alias "vs"="ssh vagrant@127.0.0.1 -p 2222 -i /Users/aaronmandle/.vagrant.d/boxes/vagrant-latest/148/virtualbox/vagrant_private_key -t 'cd ~/platform && bash'"
alias pyc-clean='find . -name "*.pyc" -exec rm -f {} \;'
alias watch='_() { while :; do clear; $1; sleep 2; done }; _'
alias remove-merged='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias trigger_build='/usr/local/bin/affirm.jenkins'
alias weather='curl -s  http://wttr.in/94107| head -n 38'
alias v='source ~/affirm/all-the-things/deployable/monolith/src/.venv/bin/activate'
alias vdp='source ~/affirm/all-the-things/deployable/data-platform/src/.venv/bin/activate'
}
HISATSIZE=10000000
SAVEHISAT=10000000
setopt append_history
setopt share_history
setopt inc_append_history


export PATH=~/diff-so-fancy:$PATH
export PATH=$PATH:/Users/aaronmandle/arcanist/arcanist/bin
export PATH=/usr/local/sbin:/usr/local/opt/python/libexec/bin:$PATH
export PATH=/usr/local/Cellar/openssl/1.0.2n/bin:$PATH   # use the brew installed openssl, may need to update this path to use newer versions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.iterm2_shell_integration.zsh
eval "$(pyenv init -)"
