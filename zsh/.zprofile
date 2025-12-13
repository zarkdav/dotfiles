if (( $+commands[keychain] )); then
  keys=(id_rsa id_ecdsa id_ed25519_sk $DEBSIGN_KEYID)
  keychain --ssh-allow-forwarded $keys || keychain --inherit any-once $keys
  [[ -r ~/.ssh-agent-`hostname` ]] && . ~/.ssh-agent-`hostname`
  [[ -r ~/.keychain/`hostname`-sh ]] &&  source ~/.keychain/`hostname`-sh
  [[ -r ~/.keychain/`hostname`-sh-gpg ]] &&  source ~/.keychain/`hostname`-sh-gpg
fi
