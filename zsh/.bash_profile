if test -t 1 && command -v zsh &>/dev/null; then
  exec env SHELL=$(command -v zsh) zsh -l
fi
test -f "$HOME/.cargo/env" && source "$HOME/.cargo/env"

# Hishtory Config:
HISHTORY=$HOME/.hishtory
if [[ -d $HISHTORY ]]; then
  export PATH="$PATH:$HISHTORY"
  source $HISHTORY/config.sh
fi
unset HISHTORY
