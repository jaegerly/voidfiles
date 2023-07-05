function fj # fuzzy dir jump
    set -f fzf_arg (fd -t d -H | sort -n | fzf --preview "exa --oneline --icons -a --group-directories-first {}" --bind=space:toggle-preview --preview-window '30%,right,border-left,<30(down,30%,border-top)' --border=rounded --margin=1% --color=dark --color='pointer:12,bg+:8' --height 100% --reverse --no-scrollbar --header='jump to ' --info=inline-right --header-first --prompt "  ")
    if test $fzf_arg
        cd $fzf_arg; clear; pwd; exa --icons -a --group-directories-first 
    else
        return 1
    end
end
