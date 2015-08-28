################################################################################
# antigen
################################################################################

source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle lein # adds command completion
antigen bundle brew # adds command completion
antigen bundle z 

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme steeef

# Tell antigen that you're done.
antigen apply

 
################################################################################
# aliases
################################################################################

# ls aliases
alias ll='ls -lh'
alias la='ls -A'
alias lla='ll -A'
alias l1='ls -1'
alias l1a='l1 -A'

# random
alias pretty_json='python -mjson.tool'
alias be='bundle exec'


################################################################################
# environment variables
################################################################################

export GREP_OPTIONS="-i -I --color=auto --exclude='*.swp'"


################################################################################
# rbenv
################################################################################
# enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


################################################################################
# ZSH options
################################################################################
# Do not share history between open shells - I find it annoying.
unsetopt share_history

################################################################################
# hub
################################################################################
# These two lines make typing completion work
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit && compinit

