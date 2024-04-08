# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
DEFAULT_USER=davi
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=2
#SPACESHIP_PHP_SHOW=true
SPACESHIP_PACKAGE_SHOW=false
#SPACESHIP_NODE_SHOW=true
SPACESHIP_RUBY_SHOW=false
#SPACESHIP_RUST_SHOW=true
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_PROMPT_ASYNC=false

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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

# The private keys must be loaded before the plugins because
# some of them need the keys here
test -e ~/.private_env && source ~/.private_env

export GOPATH="$HOME/go"

# Set PATH. We need this here, before the plugins list, because some of (them thefuck, for example) look
# for commands there
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$HOME/npm/bin:$HOME/bin:$HOME/.composer/vendor/bin:/snap/bin:$HOME/.local/bin:$HOME/.cargo/bin:/usr/local/go/bin:$GOROOT/bin:$GOPATH/bin:$HOME/Applications/git-fuzzy/bin:$HOME/Applications/activitywatch:/usr/local/go/bin"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git composer brew sublime sudo vagrant z dircycle httpie zsh-autosuggestions thefuck tmux codestats docker-compose yarn npm symfony)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval $(thefuck --alias)

test -e ~/.aliases && source ~/.aliases
test -e ~/.functions && source ~/.functions

which symfony-autocomplete > /dev/null && eval "$(symfony-autocomplete)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GNOME_KEYRING_CONTROL=/run/user/1000/keyring
export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh

source /home/davi/.config/broot/launcher/bash/br

eval "$(navi widget zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
