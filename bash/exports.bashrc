#!/bin/bash
# setup the paths
export VISUAL="/usr/bin/vim"
export EDITOR="/usr/bin/vim"
export GIT_EDITOR="/usr/bin/vim"

if [ -z "${PATH-}" ]; then
    export PATH="/usr/local/bin:/usr/bin:/bin"
fi

export PATH="${PATH}:${HOME}/.shell/bin"
export PATH="${PATH}:${HOME}/.shell/scripts"

export TEXMFHOME="${HOME}/.texmf"
export TODAY=`date +%Y-%m-%d`

#export PATH="${PATH}:${HOME}/.shell/bin"
#export PATH="${PATH}:${HOME}/.shell/bin/midas"

# Go Lang
#pathadd "${HOME}/.cabal/bin"
#pathadd "/usr/lib/go-1.9/bin"
#pathadd "${HOME}/.gocode/bin"
#export GOPATH="/home/seannelson/.gocode"

