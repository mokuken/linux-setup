#
# ~/.bashrc
#
#   __  __       _            _  __            ____            _                   #
#   |  \/  | ___ | | ___   _  | |/ /___ _ __   | __ )  __ _ ___| |__  _ __ ___     #
#   | |\/| |/ _ \| |/ / | | | | ' // _ \ '_ \  |  _ \ / _` / __| '_ \| '__/ __|    #
#   | |  | | (_) |   <| |_| | | . \  __/ | | | | |_) | (_| \__ \ | | | | | (__     #
#   |_|  |_|\___/|_|\_\\__,_| |_|\_\___|_| |_| |____/ \__,_|___/_| |_|_|  \___|    #



# If not running interactively, dont do anything
[[ $- != *i* ]] && return

# My alias commands
alias ls='ls --color=auto -1'
alias shred='shred -uzvn3'
alias commands='~/scripts/commands.sh'
alias wallset='feh --bg-fill'

#                        [Your_Name]-----|                                |=======|------[Your_Distro]
#                 [Color]--------|       |                   [Color]------|       |
#          [Style]------------|  |       |             [Style]---------|  |       |
#                             V  V       V                             V  V       V
PS1='\[\033[01;37m\]┌─[\[\033[01;32m\]mokuken\[\033[01;37m\]]-[\[\033[01;36m\]archlinux\[\033[01;37m\]]-[\[\033[01;33m\]\W\[\033[00;37m\]\[\033[01;37m\]]
\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '
#                         A  A   A
#              [Style]----|  |   |-------- [Your_Choice]
#         [Color]------------|

# pfetch
# /home/mokuken/programs/pfetch/pfetch

