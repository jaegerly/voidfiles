function fs # fuzzy string srch
    argparse --min-args=1 -- $argv
        or return
    set -f choice (rg --hidden --files-with-matches --no-messages $argv | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$argv' {}" --preview-window '50%,right,border-left,<50(down,85%,border-top)' --no-scrollbar --margin=1% --color=dark --color='pointer:12,bg+:8' --header='ripgrep ' --info=inline-right --header-first --prompt "👌")
        if test $choice
            nvim $choice
        else
            return 1
    end
end




