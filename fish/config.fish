source /usr/share/cachyos-fish-config/cachyos-config.fish

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1 
        exec startx 
    end 
end

starship init fish | source

source "$HOME/.cargo/env.fish"

pyenv init - fish | source

if type -q nvm
    nvm use default --silent
end

alias ls='EZA_COLORS="ur=0:uw=0:ux=0:gr=0:gw=0:gx=0:tr=0:tw=0:tx=0:di=1;38;2;69;133;136:tw=1;38;2;69;133;136:tm=1;38;2;69;133;136:ln=1;38;2;69;133;136:no=38;2;69;133;136" eza --icons --color=always'

alias lsa='EZA_COLORS="ur=0:uw=0:ux=0:gr=0:gw=0:gx=0:tr=0:tw=0:tx=0:di=1;38;2;69;133;136:tw=1;38;2;69;133;136:tm=1;38;2;69;133;136:ln=1;38;2;69;133;136:no=38;2;69;133;136" eza -al --icons --color=always'

set -gx XDG_DATA_DIRS \
  $HOME/.local/share/flatpak/exports/share \
  /var/lib/flatpak/exports/share \
  $XDG_DATA_DIRS

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/anirudh/projects/pm-agent/google-cloud-sdk/path.fish.inc' ]; . '/home/anirudh/projects/pm-agent/google-cloud-sdk/path.fish.inc'; end
