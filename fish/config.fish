source /usr/share/cachyos-fish-config/cachyos-config.fish

starship init fish | source

source "$HOME/.cargo/env.fish"

pyenv init - fish | source

if type -q nvm
    nvm use default --silent
end

alias ls='EZA_COLORS="ur=0:uw=0:ux=0:gr=0:gw=0:gx=0:tr=0:tw=0:tx=0:di=1;38;2;156;207;216:tw=1;38;2;156;207;216:tm=1;38;2;156;207;216:ln=1;38;2;156;207;216:no=38;2;156;207;216" eza --icons --color=always'
alias lsa='EZA_COLORS="ur=0:uw=0:ux=0:gr=0:gw=0:gx=0:tr=0:tw=0:tx=0:di=1;38;2;156;207;216:tw=1;38;2;156;207;216:tm=1;38;2;156;207;216:ln=1;38;2;156;207;216:no=38;2;156;207;216" eza -al --icons --color=always'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/anirudh/projects/pm-agent/google-cloud-sdk/path.fish.inc' ]; . '/home/anirudh/projects/pm-agent/google-cloud-sdk/path.fish.inc'; end
