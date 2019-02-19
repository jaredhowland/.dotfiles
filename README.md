`.dotfiles`
==========

This repository contains configuration and installation scripts for **macOS High Sierra**.

if Git is already installed:

_Checkout workspace to `~/.dotfiles/`_

otherwise

_download ZIP, unpack to `~/.dotfiles`_

Install all desired software. 

After installing Git, to sync the local repo with the remote, do:

    cd ~/.dotfiles
    git init
    git remote add origin https://github.com/jaredhowland/.dotfiles.git
    git fetch
    git reset --hard origin/master
    git branch -u origin/master

There is a `bootstrap.sh` script in most folders, **take a look at each script before executing it. (!)**

Run all scripts by running `~/.dotfiles/bootstrap.sh` or run them individually in this order:

1. `software/bootstrap.sh`: homebrew configuration and installation scripts. Next steps rely on software installed here.
2. `bash/bootstrap.sh`: profile, functions, aliases.
3. `git/bootstrap.sh` : git configuration.
4. `macos/bootstrap.sh` : macOS configuration

Based on <https://github.com/afranken/dotfiles>.
