function ff # fuzzy file find
    set -f fzf_arg (find -type f | fzf --preview "bat --color always --style=plain {1}" --bind=space:toggle-preview --preview-window '30%,right,border-left,<30(down,30%,border-top)' --border=rounded --margin=1% --color=dark --color='pointer:12,bg+:8' --height 100% --reverse --no-scrollbar --header='find file ' --info=inline-right --header-first --prompt " ")
    if test $fzf_arg
        nvim $fzf_arg 
    else
        return 1
    end
end
