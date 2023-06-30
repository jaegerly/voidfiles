# 
# jgr rc
# # # #
stty -ixon # disable ctrl-s and ctrl-q
shopt -s autocd # allows to cd into directory by typing name

## prompt 
PS1="\[\033[01;32m\]\w \[\033[00m\]: "



# sourcing
source ~/.config/shell/alias
# source fzf script here
source ~/.local/share/scripts/fzf/fzfshellfunctions



# lfcd
LFCD="/home/jgrvoid/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi





