source $HOME/.zsh/aliases/index
source $HOME/.zsh/prompt

# Use Vim mode for command line.
bindkey -v

# Use Vim.
export EDITOR='vim'

# Use Homebrew.
export PATH=/usr/local/bin:$PATH

# Use rbenv.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Use nvm.
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Load sensitive data.
source $HOME/.zsh/env

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
