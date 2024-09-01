# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavi
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang)

source $ZSH/oh-my-zsh.sh
source ~/.util/fzf.zsh
# ZSH Functions
#fpath=(~/.zsh_functions $fpath);
#autoload -U $fpath[1]/*(.:t)
# Aliases
alias gotc="go test -cover"
alias gotac="go test -coverpkg=all -cover ./..."
alias nanoe="nano +-1"
alias vim="nvim"

## Aliases from github.com/jez/dotfiles

# manipulate files verbosely (print log of what happened)
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"

alias cdd="cd .."
# Easily download an MP3 from youtube on the command line
which youtube-dl &> /dev/null && alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3"
# list disk usage statistics for the current folder
alias duls="du -h -d1 | sort -hr"
# print my IP
alias ip="curl curlmyip.com"

GIT_PRETTY_FORMAT="--pretty=\"%C(bold green)%h%Creset%C(auto)%d%Creset %s\""
GIT_PRETTY_FORMAT_AUTHOR="--pretty=\"%C(bold green)%h%Creset %C(yellow)%an%Creset%C(auto)%d%Creset %s\""
# pretty Git log
alias gl="git log --graph $GIT_PRETTY_FORMAT"
# pretty Git log, all references
alias gll='gl --all'
# pretty Git log, show authors
alias gla="git log --graph $GIT_PRETTY_FORMAT_AUTHOR"
# pretty Git log, all references, show authors
alias glla='gla --all'
## Direnv hook
eval "$(direnv hook zsh)"
[ -z "$(ps -ef | grep cron | grep -v grep)" ] && sudo /etc/init.d/cron start &> /dev/null

# Paths
export GOPATH=~/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
