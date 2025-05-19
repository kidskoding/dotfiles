#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsa='ls -al'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

export TERM=xterm-256color

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"               	# This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PATH="${HOME}/depot_tools:/usr/share/dotnet:/opt/jetbrains-toolbox-2.5.1.34629:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/anirudh/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/anirudh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/anirudh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/anirudh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

alias create-notebook='python ~/create-notebook.py'

export EDITOR=nvim
