PATH=~/.local/bin:$PATH
if [[ ! -z "$TERMCAP" && "$TERM" =~ "^screen" ]]; then
        export TERMCAP=$(echo $TERMCAP | sed -e 's/Co#8/Co#256/g')
fi
