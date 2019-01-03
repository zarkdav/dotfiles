#
# User configuration sourced by interactive shells
#

export GREP_COLOR="01;37"
export GREP_COLORS="ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36"

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" -a -s $BASE16_SHELL/profile_helper.sh -a "$TERM" != "eterm-256color" ] && eval "$($BASE16_SHELL/profile_helper.sh)"

bindkey -v
KEYTIMEOUT=1

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

PROMPT='%F{yellow}[%D %T] '$PROMPT

