#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc


zim_login=${ZDOTDIR:-${HOME}}/.zim/modules/custom/login
if [[ -o login && -d ${zim_login} ]]
then
    for f in ${zim_login}/*.zsh
    do
        source $f
    done
fi
