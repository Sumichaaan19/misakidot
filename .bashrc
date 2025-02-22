# Enable colors for LS
export CLICOLOR=2
alias ls='ls --color=auto'

# Function to display user, host, date, and time in colored boxes
get_box_info() {
    echo -ne "\[\033[0;1;38;5;220m\033[30;48;5;220m\] \u \[\033[0m\]\
\[\033[0;1;38;5;220m\033[30;48;5;220m\] \h \[\033[0m\]\
\[\033[0;1;38;5;220m\033[30;48;5;220m\] \d \[\033[0m\]\
\[\033[0;1;38;5;220m\033[30;48;5;220m\] \@ \[\033[0m\]"
}

# Function to display current directory with custom color
get_box_path() {
    local dir="${PWD/#$HOME/~/}"
    echo -ne "\[\033[0;1;38;5;220m\033[30;48;5;220m\] $dir \[\033[0m\]"
}

# Custom prompt with colors
PROMPT_COMMAND='PS1="\n\[\033[0;1;38;5;220m\]╭─ $(get_box_info)\n\
\[\033[0;1;38;5;220m\]│─ $(get_box_path)\n\
\[\033[0;1;38;5;220m\]│\n\
\[\033[0;1;38;5;220m\]╰─⮞ \[\033[0m\]"'
