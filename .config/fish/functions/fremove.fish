function fremove # fuzzy uninstall
    set -f choice (xbps-query -l \
        | awk '{ print $2 }' \
        | xargs -n1 xbps-uhelper getpkgname \
        | fzf \
        -q "$1" \
        --border=rounded \
        --margin=1% \
        --color=dark \
        --color='pointer:12,bg+:8' \
        --height 100% \
        --reverse \
        --no-scrollbar --header='pac remove ' \
        --info=inline-right \
        --header-first \
        --prompt " ")
        if test $choice
            sudo xbps-remove -OoR $choice
        else
            return 1
    end
end





