# Packmate: System

Configuration files for the Packmate development environment (OS X, M1).

## Setting Up

| Step                               | Command                                                                            |
| ---------------------------------- | ---------------------------------------------------------------------------------- |
| **01.** Set Up Configuration Files | `./setup`                                                                          |
| **02.** Install Homebrew           | See [Homebrew](https://brew.sh).                                                   |
| **03.** Install System Libraries   | `brew install ack git vim zsh node@12 rbenv tmux reattach-to-user-namespace`       |
| **04.** Use ZSH Shell              | `chsh -s /opt/homebrew/bin/zsh`                                                    |
| **05.** Set Up Vim Plugin Manager  | `git clone git@github.com:VundleVim/Vundle.vim.git dotfiles/vim/bundle/Vundle.vim` |
| **06.** Install Vim Plugins        | Within `vim`: `:PluginInstall`                                                     |
| **07.** Find Latest Stable Ruby    | See [Ruby](https://www.ruby-lang.org/en/downloads/).                               |
| **08.** Install Ruby               | `rbenv install [version] && rbenv global [version]`                                |
| **09.** Install Tmuxinator         | `gem install tmuxinator`                                                           |
