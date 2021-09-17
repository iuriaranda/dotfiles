# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="$HOME/.dotfiles/custom-oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  ssh-agent
  terraform
  aws-vault
  fubectl
)

# Enable Homebrew autocompletion
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

# aws-vault config
export AWS_VAULT_PROMPT=ykman

source $ZSH/oh-my-zsh.sh

# User configuration

# locale settings, string mac/chinese/pycharm/git bug
# https://coderwall.com/p/ehvc8w/set-lang-variable-in-osx-terminal-app
export LANG="en_EN.UTF-8"
export LC_COLLATE="en_EN.UTF-8"
export LC_CTYPE="en_EN.UTF-8"
export LC_MESSAGES="en_EN.UTF-8"
export LC_MONETARY="en_EN.UTF-8"
export LC_NUMERIC="en_EN.UTF-8"
export LC_TIME="en_EN.UTF-8"
export LC_ALL=

export GOPATH="$HOME/projects/go"

export PATH=$HOME/.tfenv/bin:$GOPATH/bin:$HOME/projects/skyscrapers/skyscrapers-tools/bin:$HOME/.local/bin:/usr/local/sbin:$HOME/.krew/bin:$PATH

export HISTORY_IGNORE='(vault*)'

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
#alias keybase="keybase --standalone"
# see https://unix.stackexchange.com/questions/25327/watch-command-alias-expansion
alias watch='watch '
alias k=kubectl
alias kdashboard='kubectl auth-proxy -n kube-system https://kubernetes-dashboard.svc'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

#eval `dircolors ~/dircolors-solarized/dircolors.256dark`

# === WSL WORKAROUNDS
if [[ -f /proc/version ]] && grep --quiet Microsoft /proc/version; then
  umask 002

  # Set browser to Chrome
  # https://stackoverflow.com/questions/41404536/why-is-bash-wsl-using-w3m-as-its-default-browser
  export DISPLAY=:0
  export BROWSER=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe

  export DOCKER_HOST="tcp://localhost:2375"
fi
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/iuri/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/iuri/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/iuri/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/iuri/google-cloud-sdk/completion.zsh.inc'; fi
