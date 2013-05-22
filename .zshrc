# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# old config before I was using grml-zsh-config
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
# end of old config before I was using grml-zsh-config

for file in ~/.{extra,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

setopt histignorespace
setopt histignorealldups

export EDITOR=vim
setopt emacs
