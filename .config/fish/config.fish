set -x NVM_DIR $HOME/.nvm
bass source $NVM_DIR/nvm.sh --no-use

alias update="yay -Syu"
alias clear="clear && printf '\e[3J'"

set -g fish_cursor_default block
set -g fish_cursor_insert block
set -g fish_cursor_replace_one block
set -g fish_cursor_visual block

source ~/.config/fish/functions/clean.fish
