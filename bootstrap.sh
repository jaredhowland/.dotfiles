#!/bin/bash
###
# use "bash strict mode", @see http://redsymbol.net/articles/unofficial-bash-strict-mode/
# https://sipb.mit.edu/doc/safe-shell/
set -euf
if [ "${BASH_VERSINFO[0]}" -ge 3 ]; then
  set -o pipefail
fi
IFS=$'\n\t'
###
# use command debugging
#set -x

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until function has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &#!/bin/bash
###
# use "bash strict mode", @see http://redsymbol.net/articles/unofficial-bash-strict-mode/
# https://sipb.mit.edu/doc/safe-shell/
set -euf
if [ "${BASH_VERSINFO[0]}" -ge 3 ]; then
  set -o pipefail
fi
IFS=$'\n\t'

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until function has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &#!/bin/bash
###
# use "bash strict mode", @see http://redsymbol.net/articles/unofficial-bash-strict-mode/
# https://sipb.mit.edu/doc/safe-shell/
set -euf
if [ "${BASH_VERSINFO[0]}" -ge 3 ]; then
  set -o pipefail
fi
IFS=$'\n\t'
###
# use command debugging
#set -x

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until function has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Run all `bootstrap.sh` scripts for setup
source software/bootstrap.sh
source bash/bootstrap.sh
source git/bootstrap.sh
source macos/bootstrap.sh
