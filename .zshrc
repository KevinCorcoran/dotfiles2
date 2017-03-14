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

export PATH=$PATH:$HOME/bin

################################################################################
# rbenv
################################################################################
# enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


################################################################################
# hub
################################################################################
# These two lines make typing completion work
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit && compinit


# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/kevin/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/kevin/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/kevin/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/kevin/google-cloud-sdk/completion.zsh.inc'
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

