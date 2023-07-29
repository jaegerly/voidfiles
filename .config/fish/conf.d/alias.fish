if status is-interactive
    alias q="cd; clear; pwd"
    alias ls="exa --icons -a --group-directories-first"
    alias ll="exa --icons -la --group-directories-first --header --git"
    alias bb='cd ..;pwd'
    alias xi="xbps-install"
    ##
    ## yt dl
    alias ytm="yt-dlp -x --audio-format mp3 --add-metadata -o '%(title)s.%(ext)s'"
    alias ytpl="yt-dlp -x --audio-format mp3 -i --add-metadata -o '%(title)s.%(ext)s'"
    alias ytdl="yt-dlp -f bestaudio/best -o '%(title)s.%(ext)s'"
    # rsync dots
    alias syncconfig="rsync -urvP --exclude 'libfm' --exclude 'pcmanfm' --exclude 'QtProject.conf' --exclude 'tox' --exclude 'pulse' --exclude 'menus' --exclude 'keepassxc' --exclude 'gtk-3.0' --exclude 'mpv/watch_later' ~/.config ~/repos/voidfiles"
    alias syncscripts="rsync -urvP ~/.local/share/scripts ~/repos/voidfiles"
    alias syncdots="rsync -urvP ~/.profile ~/.bashrc ~/repos/voidfiles"
end

