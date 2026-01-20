#
# ~/.bashrc
#
# Cores Gruvbox
GB_GREY="\[\e[38;5;250m\]"
GB_GREEN="\[\e[38;5;142m\]"
GB_BLUE="\[\e[38;5;109m\]"
GB_YELLOW="\[\e[38;5;214m\]"
GB_ORANGE="\[\e[38;5;208m\]"
RESET="\[\e[0m\]"

# PS1 com ícone antes do host
# ⬢ usuario@host in diretorio
PS1="${GB_BLUE}⬢ ${GB_GREEN}\u${GB_GREY}@${GB_BLUE}\h ${GB_GREY}in ${GB_YELLOW}\w ${GB_GREY}\n${GB_ORANGE}❯ ${RESET}"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
