if test -t 1 && command -v zsh &> /dev/null; then
    exec env SHELL=`command -v zsh` zsh -l
fi
test -f "$HOME/.cargo/env" && source "$HOME/.cargo/env"
