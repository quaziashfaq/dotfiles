# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ash/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -lla'
alias ltr='ls -ltr'

#alias rs='rlwrap sbcl'
alias myip="curl http://ipecho.net/plain; echo"

mcd(){
    mkdir -pv $1 && cd $1
}

export PATH=/home/ash/.local/share/gem/ruby/3.0.0/bin:$PATH
export PS1='%n@%m %~/ 
$ '

