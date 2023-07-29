if status is-interactive
    #system
    abbr cp cp -iv
    abbr mv mv -iv
    abbr rm rm -vI 
    abbr c clear
    abbr xq xbps-query
    #programs
    abbr cat bat
    abbr e nvim .
    abbr v nvim 
    abbr nb newsboat 
    abbr nbu newsboat -x reload 
    abbr redshift redshift -PO
    abbr pp nsxiv -r .
    abbr p nsxiv
    #trash
    abbr tr trash
    abbr trr trash-restore
    abbr tren trash-empty
    abbr tre trash-empty 15
    abbr trls trash-list 
    #git
    abbr gaddu git add -u
    abbr gadda git add .
    abbr gs git status
    abbr gc git commit -m
    abbr gp git push
end
