source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle lein # adds command completion
antigen bundle brew # adds command completion
antigen bundle github # adds a bunch of useful stuff that I've never really used
# TODO figure out how to actually use this ^^

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme steeef

# Tell antigen that you're done.
antigen apply

### ALIASES

# ls aliases
alias ll='ls -lh'
alias la='ls -A'
alias lla='ll -A'
alias l1='ls -1'
alias l1a='l1 -A'

# random
alias pretty_json='python -mjson.tool'


### ENVIRONMENT VARIABLES
export GREP_OPTIONS="-i -I --color=auto --exclude='*.swp'"
