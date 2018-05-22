# DOTfiles

These are my dotfiles. Take anything you want, but at your own risk.

It targets macOS systems. Most of it is stolen from [mathiasbynens](https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile) and customized for my needs.

## Package overview

* Core
  * iTerm2 + zsh + zsh-completion
  * [Homebrew](https://brew.sh) + [homebrew-cask](https://caskroom.github.io)
  * Node.js + npm + nvm
  * GNU [sed](https://www.gnu.org/software/sed/), [grep](https://www.gnu.org/software/grep/), [Wget](https://www.gnu.org/software/wget/)
  * [fasd](https://github.com/clvv/fasd), [psgrep](https://github.com/jvz/psgrep/blob/master/psgrep), [pgrep](https://linux.die.net/man/1/pgrep), [spot](https://github.com/guille/spot), [tree](http://mama.indstate.edu/users/ice/tree/), [gtop](https://github.com/aksakalli/gtop)
  * Git
  * [rvm](https://rvm.io) (Ruby 2.1), [lunchy](https://github.com/eddiezane/lunchy)
  * Python 2 and python 3
  * `$EDITOR` and Git editor is [VIM](https://www.vim.org/)
* Development (Node/JS): [nodemon](https://nodemon.io), [superstatic](https://github.com/firebase/superstatic)
* Graphics: [ffmpeg](https://www.ffmpeg.org), [imagemagick](https://www.imagemagick.org)
* macOS: [dockutil](https://github.com/kcrawford/dockutil), [chunkwm](https://github.com/koekeishiya/chunkwm), [Quick Look plugins](https://github.com/sindresorhus/quick-look-plugins)
* [macOS apps](https://github.com/webpro/dotfiles/blob/master/install/brew-cask.sh)

## Install

On a sparkling fresh installation of macOS:

    sudo softwareupdate -i -a
    xcode-select --install

Install the dotfiles with either Git or curl:

### Clone with Git

    git clone https://github.com/webpro/dotfiles.git ~/.dotfiles
    source ~/.dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:

    bash -c "`curl -fsSL https://raw.github.com/webpro/dotfiles/master/remote-install.sh`"

Or, using wget:

    bash -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/webpro/dotfiles/master/remote-install.sh`"

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       clean            Clean up caches (brew, npm, gem, rvm)
       edit             Open dotfiles in IDE (code) and Git GUI (stree)
       help             This help message
       macos            Apply macOS system defaults
       update           Update packages and pkg managers (OS, brew, npm, gem)

## Customize/extend

You can put your custom settings, such as Git credentials in the `system/.custom` file which will be sourced from `.bash_profile` automatically. This file is in `.gitignore`.

Alternatively, you can have an additional, personal dotfiles repo at `~/.extra`.

* The runcom `.bash_profile` sources all `~/.extra/runcom/*.sh` files.
* The installer (`install.sh`) will run `~/.extra/install.sh`.

## Additional resources

* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
* [Homebrew](https://brew.sh)
* [homebrew-cask](https://caskroom.github.io) / [usage](https://github.com/phinze/homebrew-cask/blob/master/USAGE.md)
* [ZSH prompt](https://github.com/zsh-users/zsh)
* [PyWal](https://github.com/dylanaraps/pywal)

## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io) and [mathiasbynens](https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile).
