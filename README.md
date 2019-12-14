# Packmate: System

Configuration files for the Packmate development environment.

## Setting Up

| Step                     | Command                                                                        |
| ------------------------ | ------------------------------------------------------------------------------ |
| Install Homebrew         | See [Homebrew](https://brew.sh).                                               |
| Install System Libraries | `brew install ack git vim zsh node rbenv tmux reattach-to-user-namespace`      |
| Link Configuration Files | `./setup`                                                                      |
| Allow ZSH                | Add `/usr/local/bin/zsh` within `/etc/shells` (`sudo vim /etc/shells`)         |
| Use ZSH                  | `chsh -s /usr/local/bin/zsh`                                                   | 
| Set up Vundle for Vim    | `git clone git@github.com:VundleVim/Vundle.vim.git dotfiles/vim/bundle`        |
| Install Vim Plugins      | Within `vim`: `:PluginInstall`                                                 |
| Find Latest Stable Ruby  | See [Ruby](https://www.ruby-lang.org/en/downloads/).                           |
| Install Ruby             | `rbenv install [version] && rbenv global [version]`                            |
| Install Tmuxinator       | `gem install tmuxinator`                                                       |
