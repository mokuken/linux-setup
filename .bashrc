#
# ~/.bashrc
#
#   __  __       _            _  __            ____            _                   #
#   |  \/  | ___ | | ___   _  | |/ /___ _ __   | __ )  __ _ ___| |__  _ __ ___     #
#   | |\/| |/ _ \| |/ / | | | | ' // _ \ '_ \  |  _ \ / _` / __| '_ \| '__/ __|    #
#   | |  | | (_) |   <| |_| | | . \  __/ | | | | |_) | (_| \__ \ | | | | | (__     #
#   |_|  |_|\___/|_|\_\\__,_| |_|\_\___|_| |_| |____/ \__,_|___/_| |_|_|  \___|    #

# Get the current active terminal
term="$(cat /proc/$PPID/comm)"

# Set a default prompt
p='\[\033[01;37m\]┌─[\[\033[01;32m\]mokuken\[\033[01;37m\]]-[\[\033[01;36m\]archlinux\[\033[01;37m\]]-[\[\033[01;33m\]\W\[\033[00;37m\]\[\033
[01;37m\]]
\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '

# Set transparency and prompt while using st
if [[ $term = "st" ]]; then
    transset-df "0.65" --id "$WINDOWID" >/dev/null

#                        [Your_Name]-----|                                |=======|------[Your_Distro]
#                 [Color]--------|       |                   [Color]------|       |
#          [Style]------------|  |       |             [Style]---------|  |       |
#                             V  V       V                             V  V       V
        p='\[\033[01;37m\]┌─[\[\033[01;32m\]mokuken\[\033[01;37m\]]-[\[\033[01;36m\]archlinux\[\033[01;37m\]]-[\[\033[01;33m\]\W\[\033[00;37m\]\[\033[01;37m\]]
\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '
#                         A  A   A
#              [Style]----|  |   |-------- [Your_Choice]
#         [Color]------------|

fi

# If not running interactively, dont do anything
[[ $- != *i* ]] && return

# My alias commands
alias ls='ls --color=auto -1'
alias shred='shred -uzvn3'
alias wallset='feh --bg-fill'

PS1=$p

# pfetch
# /home/mokuken/programs/pfetch/pfetch
