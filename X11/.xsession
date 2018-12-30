#!/bin/sh

# start SSH key agent
export SSH_ASKPASS=/usr/lib/ssh/ssh-askpass
if [ -x `which keychain` ] ; then
    eval `keychain --eval id_rsa`
fi
