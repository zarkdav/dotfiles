export LANG=en_US.UTF-8
if [[ ! -z "$TERMCAP" && "$TERM" =~ "^screen" ]]; then
        export TERMCAP="$(echo $TERMCAP | sed -e 's/Co#8/Co#256/g')"
fi
path=( ${path[@]:#*/mnt/*} )
PATH=$HOME/.local/bin:$PATH
test -f "$HOME/.cargo/env" && source "$HOME/.cargo/env"
