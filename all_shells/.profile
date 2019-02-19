# ~/.profile: executed by the command interpreter for login shells.

export DOTFILES_PATH=~/.dotfiles
export BASH_SRC_PATH=${DOTFILES_PATH}/bash
export SHELLS_SRC_PATH=${DOTFILES_PATH}/all_shells

#define uname variables
MAC_UNAME="Darwin"
CURRENT_UNAME=$(uname)

#read local includes
for file in ${DOTFILES_PATH}/local/.*-local
do
  source ${file}
done

#include these for all shells
source "${SHELLS_SRC_PATH}"/.aliases
source "${SHELLS_SRC_PATH}"/.functions

# include OS specific settings
if [ ${CURRENT_UNAME} = ${MAC_UNAME} ]; then
  source "${SHELLS_SRC_PATH}"/.profile-macos
  source "${SHELLS_SRC_PATH}"/.aliases-macos
  source "${SHELLS_SRC_PATH}"/.functions-macos
fi

PATH="${DOTFILES_PATH}/bin:${PATH}"

# set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
    PATH="${HOME}/bin:${PATH}"
fi

export EDITOR=bbedit
export VISUAL=bbedit
