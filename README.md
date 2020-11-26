# Packmate: System

Configuration files for the Packmate development environment.

## Setting Up

| Step                               | Command                                                                        |
| ---------------------------------- | ------------------------------------------------------------------------------ |
| **01.** Install Homebrew           | See [Homebrew](https://brew.sh).                                               |
| **02.** Install System Libraries   | `brew install ack git vim zsh node@12 rbenv tmux reattach-to-user-namespace`   |
| **03.** Enable ZSH Shell           | `echo '/usr/local/bin/zsh' \| sudo tee -a /etc/shells`                         |
| **04.** Use ZSH Shell              | `chsh -s /usr/local/bin/zsh`                                                   |
| **05.** Set Up Vim Plugin Manager  | `git clone git@github.com:VundleVim/Vundle.vim.git dotfiles/vim/bundle`        |
| **06.** Set Up Configuration Files | `./setup`                                                                      |
| **07.** Install Vim Plugins        | Within `vim`: `:PluginInstall`                                                 |
| **08.** Find Latest Stable Ruby    | See [Ruby](https://www.ruby-lang.org/en/downloads/).                           |
| **09.** Install Ruby               | `rbenv install [version] && rbenv global [version]`                            |
| **10.** Install Tmuxinator         | `gem install tmuxinator`                                                       |
