#
# ~/.bashrc
#

# If not running interactively, dont do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[01;37m\]┌─[\[\033[01;32m\]mokuken\[\033[01;37m\]]-[\[\033[01;36m\]archlinux\[\033[01;37m\]]-[\[\033[01;33m\]\W\[\033[00;37m\]\[\033[01;37m\]]
\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '


# the fetch program for showing information
# /home/mokuken/programs/pfetch/pfetch
