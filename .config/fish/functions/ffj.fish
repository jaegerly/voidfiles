function ffj # fuzzy file dir jump
    set -f file (find -type f | fzf +m -q "$1" --preview "bat --color always --style=plain {1}" --bind=space:toggle-preview --preview-window '30%,right,border-left,<30(down,30%,border-top)' --border=rounded --margin=1% --color=dark --color='pointer:12,bg+:8' --height 100% --reverse --no-scrollbar --header='jump to file ' --info=inline-right --header-first --prompt " ")
    set -f dir (dirname "$file")
    if test $file
        cd "$dir"; clear; ls
    else
        return 1
    end
end

