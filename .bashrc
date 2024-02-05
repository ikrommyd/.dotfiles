export CLICOLOR=1
export EDITOR='nvim'

# Created by `pipx` on 2023-11-23 18:25:26
export PATH="$PATH:/Users/iason/Library/Python/3.11/bin"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

bind '"\C-f":"tmux-sessionizer\n"'

fcd() {
    local selected=$(find ~/work ~/fun ~/Dropbox -mindepth 1 -maxdepth 2 -type d | fzf)

    if [[ -n $selected ]]; then
        cd "$selected" || return
    fi
}

