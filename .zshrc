HIST_FORMAT="'%Y-%m-%d %T:'$(echo -e '\t')"
alias history="fc -t "$HIST_FORMAT" -il 1"

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="robbyrussell"

HIST_STAMPS="mm/dd/yyyy"
#HIST_STAMPS="yyyy-mm-dd"
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize pip python brew osx kubectl kube-ps1 bxc bxs z zsh-autosuggestions)

source ~/.settings
source ~/.aliases
source ~/.functions
PROMPT=$PROMPT'$(kube_ps1) '


