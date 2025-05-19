# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

# User specific environment and startup programs
. "$HOME/.cargo/env"

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
export SSH_AUTH_SOCK
