# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored
#zstyle ':completion:*' completions 1
#zstyle ':completion:*' glob 1
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' max-errors 3 numeric
#zstyle ':completion:*' menu select=1
#zstyle ':completion:*' prompt 'Errors found: %e'
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' substitute 1
#zstyle :compinstall filename '/home/george/.zshrc'
#
#autoload -Uz compinit
#compinit
## End of lines added by compinstall
#
#autoload -U promptinit
#promptinit
##prompt elite2 cyan red
#prompt fire blue blue cyan white black yellow
[ -r ~/.extra ] && source ~/.extra

setopt histignorespace
setopt histignorealldups

alias xclip="xclip -selection c"
alias rdesktop='rdesktop -g 1024x768'
alias vboxmanage='VBoxManage'
alias wolD='wol 00:1B:FC:32:BC:38'
alias lt='ls -lth --color=auto'

export EDITOR=vim
setopt emacs
