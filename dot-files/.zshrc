# Path to your oh-my-zsh installation.
export ZSH=/Users/vprasanna/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

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
 ENABLE_CORRECTION="true"

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
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
source ~/.bash_profile
#eval "$(direnv hook zsh)"

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# To use dvm => Docker version manager
#[[ -s "$(brew --prefix dvm)/dvm.sh" ]] && source "$(brew --prefix dvm)/dvm.sh"

#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh
#export PATH=./node_modules/.bin:$PATH

#eval "$(hub alias -s)"
source ~/Documents/Official/Code/own-projects/pulli-vivaram/dot-files/.alias
#source /Users/prasanna/Documents/Official/Code/own-projects/pulligal/dot-files/.m2p
source ~/Documents/Official/Code/own-projects/pulli-vivaram/dot-files/.gitalias

# Make vi default editor, vi related settings
# http://unix.stackexchange.com/questions/44115/how-do-i-perform-a-reverse-history-search-in-zshs-vi-mode/273672#273672?newreg=26e81cf912814bd590410b408c30851a
set -o vi

bindkey "^R" history-incremental-search-backward

# To distinguish between insert mode and normal mode in zsh vi
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
 }

 zle -N zle-line-init
 zle -N zle-keymap-select
# Increase the switching time between insert and normal mode in vim

 autoload edit-command-line
 zle -N edit-command-line
 bindkey -M vicmd v edit-command-line

 export KEYTIMEOUT=1

 export LC_ALL=en_US.UTF-8
 export LANG=en_US.UTF-8
 export CLICK_PATH=~/.cargo/bin
 export GOPATH=/Users/vprasanna/Documents/Official/Code/openbank/golang/
 export JAVA_HOME=$(/usr/libexec/java_home)
 export PATH="/usr/local/sbin:$PATH:$GOPATH/bin:$CLICK_PATH:$JAVA_HOME/bin"
 export EDITOR=vi

# Docker Version Manager
#export DVM_DIR="/usr/local/Cellar/dvm/0.8.2"
#[[ -r $DVM_DIR/bash_completion ]] && . $DVM_DIR/bash_completion
#source /usr/local/Cellar/dvm/0.8.2/dvm.sh

autoload -U +X bashcompinit && bashcompinit
#source /usr/local/Cellar/autojump/22.5.1/etc/autojump.sh

[ -f ~/.kube-fzf/kube-fzf.sh ] && source ~/.kube-fzf/kube-fzf.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="--preview 'cat {}'"

# Enable key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
source /usr/local/opt/autoenv/activate.sh

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

eval "$(direnv hook zsh)"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Because signing of commits is failing
# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty)
