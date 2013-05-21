#
# ~/.bashrc
#

source ~/.extra

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rdesktop='rdesktop -g 1024x768'
alias vboxmanage='VBoxManage'
alias xclip="xclip -selection c"

#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[0m\] '
PS2='$'

HISTCONTROL=ignorespace
