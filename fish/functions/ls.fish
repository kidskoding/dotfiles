function ls --wraps='eza -a --icons --color=always' --wraps='eza -l --icons --color=always' --wraps='eza --icons --color=always' --description 'alias ls=eza --icons --color=always'
    eza --icons --color=always $argv
end
