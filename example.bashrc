# Setup the colors for solarized-dark
eval `dircolors ~/.shell/dircolors/dircolors.256dark`

# setup the paths
if [ -e ~/.shell/bash/exports ]; then
    source ~/.shell/bash/exports
fi

if [ -e ~/.shell/bash/aliases ]; then
    source ~/.shell/bash/aliases
fi

if [ -e ~/.shell/bash/ssh ]; then
    source ~/.shell/bash/ssh
fi

if [ -e ~/.shell/bash/commands ]; then
    source ~/.shell/bash/commands
fi

if [ -e ~/.shell/bash/java ]; then
    source ~/.shell/bash/java
fi

# Powerline shell changes
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
powerline_root=$(pip3 show powerline-status | sed -n -e "s/^Location\: //p")/powerline
if [ -f ${powerline_root}/bindings/bash/powerline.sh ]; then
    source ${powerline_root}/bindings/bash/powerline.sh
fi
