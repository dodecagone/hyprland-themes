# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
fi


# CUSTOM FUNCTIONS AND ALIASES
alias ls='ls -X --color=auto'
alias grep='grep --color=auto'


# PS1='[\u@\h \W]\$ '
PS1='\[\e[93;1m\]\w\[\e[0m\] 󰁕 '

