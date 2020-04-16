if test -t 1; then
    exec env SHELL=`which zsh` zsh -l
fi
