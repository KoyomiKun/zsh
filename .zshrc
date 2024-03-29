# If you come from bash you might have to change your $PATH.
export PATH=~/scripts/:$PATH
export GOROOT=/usr/local/go
export GO_1_16_HOME=/usr/local/go
export GO_1_16_BIN=$GOROOT/bin

export PATH=$PATH:$GOROOT/bin
export GOPATH=/Users/zhangzelin/Desktop/code/go
export PATH=$PATH:$GOPATH/bin
# Path to your oh-my-zsh installation.
export ZSH="/Users/zhangzelin/.oh-my-zsh"
#export GOPROXY=https://goproxy.cn,direct
#export GO111MODULE=auto


# Qt Dpi
export QT_AUTO_SCREEN_SCALE_FACTOR=1
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
plugins=(git 
	zsh-autosuggestions 
	zsh-syntax-highlighting
	vi-mode
	extract
)


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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Functions
function countdown(){
	date1=$((`date +%s` + $1));
	while [ "$date1" -ge `date +%s` ]; do
		echo -ne "$(date -u --date @$(($date1 -	`date +%s`)) +%H:%M:%S)\r";
		sleep 0.1
	done
}



# Alias
alias c="clear"
alias ra="ranger"
alias ss="shutdown -h now"
alias vimrc="vim ~/.vim/vimrc"
alias i3c="vim ~/.config/i3/config"
#alias sudo="sudo -E"
alias s="screenfetch -ED 'arch'"
alias td="clear && cat /home/zhangzelin/Desktop/2020"
alias wc="when-changed -r -v -1 . python"
alias ipdb="python -m ipdb"
alias polybar="killall polybar; /home/zhangzelin/.config/polybar/launch.sh"
# proxy
alias setproxy="export http_proxy=socks5://127.0.0.1:1080 ;export https_proxy=socks5://127.0.0.1:1080; echo 'HTTP Proxy on';"
alias unsetproxy="unset http_proxy; unset https_proxy; echo 'HTTP Proxy off';"
alias relay="~/bin/relay_auto_login/relay"
alias q="exit"
alias bl="CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o build/linux"
alias bm="CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o build/macos"
alias bw="CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o build/windows"


