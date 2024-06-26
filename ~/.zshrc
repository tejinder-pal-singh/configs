# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ZSH_THEME="powerlevel10k/powerlevel10k""

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh


# User configuration
export DEV=/Users/tejindersingh/Developer
export TN=$DEV/TN
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"

 
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
  export EDITOR='vscode'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias zshrc='code ~/.zshrc'

# config repo
alias notes="code $DEV/configs/notes/notes.txt"
alias commitconfig="cd $DEV/configs && git add . && git commit -m \"commit\" && git push"
alias setupconfig="cd $DEV && git clone git@github.com:tejinder-pal-singh/configs.git"
alias updateconfig="cp ~/.zshrc $DEV/configs/~/zshrc.txt && cp $DEV/Library/Application/Support/Code/User/settings.json $DEV/configs/vscode/ && commitconfig"
alias syncZshrc="cp ~/.zshrc $DEV/configs/~/zshrc.txt && commitconfig"

# utils
alias copy='pbcopy'
alias shutdown='shutdown -h now'
alias restart='shutdown -r now'
alias port='lsof -i tcp: '
alias copyzshrc='cat ~/.zshrc | copy'
alias yt='echo "document.getElementsByClassName(\"video-stream html5-main-video\")[0].playbackRate = 3" | copy'
alias danger="open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir=\"/tmp/chrome_dev_test\" --disable-web-security http://home.tndev.aws.talentneuron.com/home localhost:3000 && tnemail"
alias chrome="open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args && tnemail"
alias wifiPass="security find-generic-password -wa "
alias space="df -h"
alias myip="ifconfig en0 | grep inet"
alias processes="ps -ax"
alias serve8000="python3 -m http.server"
alias killjava="lsof -i tcp:8080 | grep java | awk '{ kill $2 }'"
# TN
alias tnurl='echo http://homepage.tndev.aws.gartner.com/home | copy'
alias tnemail='echo "tejinder.singh@talentneuron.com" | copy'
alias tn='cd '$TN
alias cc='cd $TN/components-library'
alias tnr='cd $TN/gemini'
alias tnr-ui='cd $TN/gemini/memberweb/react'
alias tnp='cd $TN/talentneuron-plan2.x---platform'
alias tnp-ui='cd $TN/talentneuron-plan2.x---platform/sourcecode/tnp.web/web.client'
alias removecc='rm -rf node_modules/tn-components-library'
alias installcc='rm -rf node_modules/tn-components-library && cd $TN/components-library && npm run build && npm i $TN/components-library/'
alias runcc="cd $TN/components-library && code . && npm run storybook && danger"
alias runtnr='cd $TN/gemini/memberweb/react/web.client/ && code . && npm start && danger'
alias opentnr='code $TN//gemini/memberweb/react/web.client/'
alias runtnp='cd $TN/talentneuron-plan2.x---platform/sourcecode/tnp.web/web.client && code . && npm start && danger'
alias opentnp='code $TN/talentneuron-plan2.x---platform/sourcecode/tnp.web/web.client'
alias removeccc='rm -rf yarn.lock package-lock.json node_modules/tn-components-library && ni'
alias generatefont='npm run generate-font && npm run build'

alias addkey='/usr/bin/ssh-add --apple-use-keychain ~/.ssh/TN/ed25519'

# git
alias cl='git clone'
alias gc='git checkout'
alias gac='git add . && git commit -m'
alias gl='git log --graph --decorate --oneline'
alias dsstore='find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch'

# node
alias freshinstall='rm -rf package-lock.json node_modules && npm i'
alias ni='npm install --prefer-offline --no-audit --progress=false'
alias yi='yarn install'
