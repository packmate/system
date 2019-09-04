source $HOME/.zsh/aliases/index
source $HOME/.zsh/prompt
source $HOME/.zsh/version-managers

# Load sensitive data.
source $HOME/.zsh/env

# Use Vim mode for command line.
bindkey -v

# Use Vim.
export EDITOR='vim'

# Use colors.
autoload -U colors
colors

# Enable colored output from commands.
export CLICOLOR=1

# Lots of history.
export HISTSIZE=500

# Use Command-R to search through history.
bindkey '^R' history-incremental-search-backward

# Don't show partial lines.
unsetopt PROMPT_SP
