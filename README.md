# Packmate: System

Configuration files for the Packmate development environment.

## Setting Up

| Step                           | Command                                                                        |
| ------------------------------ | ------------------------------------------------------------------------------ |
| 01. Install Homebrew           | See [Homebrew](https://brew.sh).                                               |
| 02. Install System Libraries   | `brew install ack git vim zsh node@12 rbenv tmux reattach-to-user-namespace`   |
| 03. Set Up Configuration Files | `./setup`                                                                      |
| 04. Enable ZSH Shell           | Add `/usr/local/bin/zsh` to `/etc/shells` (`sudo vim /etc/shells`)             |
| 05. Use ZSH Shell              | `chsh -s /usr/local/bin/zsh`                                                   | 
| 06. Set up Vim Plugin Manager  | `git clone git@github.com:VundleVim/Vundle.vim.git dotfiles/vim/bundle`        |
| 07. Install Vim Plugins        | Within `vim`: `:PluginInstall`                                                 |
| 08. Find Latest Stable Ruby    | See [Ruby](https://www.ruby-lang.org/en/downloads/).                           |
| 09. Install Ruby               | `rbenv install [version] && rbenv global [version]`                            |
| 10. Install Tmuxinator         | `gem install tmuxinator`                                                       |
