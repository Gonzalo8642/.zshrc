# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/gp/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  OSX
  copyfile
  extract
  taskworrior
  zsh-autosuggestions
  colored-man-pages
  react-native
)

# Change the highlight color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'
# CTRL + SPACE executes the suggested path
bindkey '^ ' autosuggest-accept

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Removes username and mechine name from propt
DEFAULT_USER=$USER 
prompt_context(){}

# Enables zsh-syntax-hightlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set alias
alias college='~/Google\ Drive/College/NIU/2019\ Spring/'
alias markdown="open -a typora"
prompt_dir () {
    prompt_segment blue black '%2~'
}
# ANDROID_HOME environment variable
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="/usr/local/opt/node@10/bin:$PATH"
# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# Print out useful info about my setup
function helpme() {
	echo "************************* Shortcuts *************************" | colorText light-green
	echo "Use CTRL + SPACE to execute hightlighted commad"
	echo 
	echo "************************* Aliases  *************************" | colorText blue
	echo "$(echo "college" | colorText green) - cd into google drive college folder"
	echo "$(echo "markdown" | colorText green) - Open markdown editor Typora"
	echo
	echo "************************* Utis  *************************" | colorText blue
	echo "Record terminal as gif    - $(echo "ttyrec {filename}" | colorText green)"
	echo "Convert recording to gif  - $(echo "ttygif {filename} -f" | colorText green)"
}

# function to color text in terminal
# Usage: echo "sometext" | colorText red
function colorText() {
	noColor='\033[0m'
	col='\033[0m'
	case $1 in
		black)        col=$'\e[30m' ;;
		red)          col=$'\e[31m' ;;
		green)        col=$'\e[32m' ;;
		yellow)       col=$'\e[33m' ;;
		blue)         col=$'\e[34m' ;;
		purple)       col=$'\e[35m' ;;
		cyan)         col=$'\e[36m' ;;
		white)        col=$'\e[97m' ;;
		light-gray)   col=$'\e[37m' ;;
		dark-gray)    col=$'\e[90m' ;;
		light-red)     col=$'\e[91m' ;;
		light-green)   col=$'\e[92m' ;;
		light-blue)    col=$'\e[94m' ;;
		light-purple)  col=$'\e[95m' ;;
		light-cyan)    col=$'\e[96m' ;;
	esac
	read input
	echo -e "${col}$input${noColor}"
}
