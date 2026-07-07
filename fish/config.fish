
source /usr/share/cachyos-fish-config/cachyos-config.fish

starship init fish | source

source "$HOME/.cargo/env.fish"

pyenv init - fish | source

rbenv init - fish | source

if type -q nvm
    nvm use default --silent
end

# Catppuccin Mocha eza colors
set -gx EZA_COLORS "ur=0:uw=0:ux=0:gr=0:gw=0:gx=0:tr=0:tw=0:tx=0:no=38;2;205;214;244:fi=38;2;205;214;244:di=1;38;2;137;180;250:ln=38;2;137;220;235:lp=38;2;137;220;235:or=38;2;243;139;168:mi=38;2;243;139;168:ex=38;2;166;227;161:pi=38;2;250;179;135:so=38;2;245;194;231:bd=38;2;249;226;175:cd=38;2;148;226;213:su=1;38;2;235;160;172:sg=38;2;235;160;172:st=38;2;116;199;236:ow=38;2;180;190;254:tw=1;38;2;180;190;254:sn=38;2;250;179;135:sb=38;2;127;132;156:da=38;2;116;199;236:hd=1;38;2;203;166;247:im=38;2;166;227;161:vi=38;2;203;166;247:mu=38;2;148;226;213:lo=38;2;148;226;213:cr=38;2;243;139;168:do=38;2;137;180;250:co=38;2;250;179;135:tm=38;2;108;112;134"

alias ls='eza --icons --color=always'
alias lsa='eza -al --icons --color=always'

alias tree-git='eza -aT --color=always --icons'
alias tree='eza -aT --color=always --icons --git-ignore'

set -gx XDG_DATA_DIRS \
  $HOME/.local/share/flatpak/exports/share \
  /var/lib/flatpak/exports/share \
  $XDG_DATA_DIRS

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/anirudh/projects/pm-agent/google-cloud-sdk/path.fish.inc' ]; . '/home/anirudh/projects/pm-agent/google-cloud-sdk/path.fish.inc'; end

