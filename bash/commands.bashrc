#function grdump {
#   clear;
#   #ll;
#   echo -e "\n\nFile: $1"
#   xxd "$1" | head -n 30;
#   echo -e "\n\n"
#}

function grdump {
    clear;
    for i in $@; do
        echo -e "\nFile: ${i}"
        xxd "${i}" | head -n 15;
        echo -e "\n"
    done;
}

function nameterm {
    echo -ne "\033]0;${1}\007"
}

function ssh-vnc {
    HOST=${1}
    if [ $HOST == "ice1" ]; then
        PORT="5951"
    elif [ $HOST == "ice2" ]; then
        PORT="5952"
    else
        PORT=`echo 5900+${2} | bc`
    fi
    #echo "Connecting to ${HOST} on port ${PORT}"
    ssh -N -f -L ${PORT}:localhost:${PORT} ${HOST} sleep 7
    remnvncviewer localhost:${PORT}
}

pathadd() {
    newelement=${1%/}
    where=${2}
    if [ -d "$1" ] && ! echo $PATH | grep -E -q "(^|:)$newelement($|:)" ; then
        if [ "$where" = "before" ] ; then
            PATH="$newelement:$PATH"
        else
            PATH="$PATH:$newelement"
        fi
    fi
}

pathrm() {
    PATH="$(echo $PATH | sed -e "s;\(^\|:\)${1%/}\(:\|\$\);\1\2;g" -e 's;^:\|:$;;g' -e 's;::;:;g')"
}

