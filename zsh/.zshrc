source "$XDG_CONFIG_HOME/zsh/aliases"
source "$DOTFILES/zsh/.zshrc"
source "$DOTFILES/zsh/scripts.sh"

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

fpath=($ZDOTDIR/external $fpath)

autoload -Uz compinit; compinit
autoload -Uz prompt_purification_setup; prompt_purification_setup
autoload -Uz cursor_mode && cursor_mode
autoload -Uz edit-command-line

zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Autocomplete hidden files 
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

# Push the current directory visited on to the stack.
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd.
setopt PUSHD_SILENT

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

bindkey -v
export KEYTIMEOUT=1

zmodload zsh/complis
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi




source ~/dotfiles/zsh/external/bd.zsh
source /usr/share/zsh/plugins/zsh-syntax-hihglighting/zsh-syntax-highlighting.zsh
