# -*- shell-script -*-x 
# vim: set syntax=zsh:

if (( $+commands[vim] ))
then
    export VISUAL=$commands[vim]
    alias vi="vim"

    vim_version=$(vim --version | head -1 | grep -o '[0-9]\.[0-9]')
    if [[ $+commands[vimpager] -eq 1 && $vim_version -ge 8.0 ]]
    then
        export PAGER=vimpager
        alias less=$PAGER
        alias zless=$PAGER
    fi
fi

if (( $+commands[grabssh] ))
then
    alias screen="grabssh && screen"
fi

alias mkdir='mkdir -p -v'
alias mv='timeout 8 mv -iv'
alias rm='timeout 3 rm -Iv --one-file-system'
alias cp="cp -i"
alias ll="ls -l"
alias la="ls -a"
alias lh="ls -lh"
alias lsd='ls -ld *(-/DN)'
alias df="df -h"
alias ip="ip -c"


alias lsdir="for dir in *;do;if [ -d \$dir ];then;du -hsL \$dir 2>/dev/null;fi;done"

alias -s log="tail -f"

alias -s pem="openssl x509 -text -noout -in"
alias -s req="openssl req -text -in"

ssh_key_manage

return 0
