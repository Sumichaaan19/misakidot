# Enable colors for LS
export CLICOLOR=2
alias ls='ls --color=auto'

# Function to display user, host, date, and time in pastel yellow boxes
get_box_info() {
    echo -ne "\[\033[0;1;38;5;229m\033[30;48;5;229m\] \u \[\033[0m\]\
\[\033[0;1;38;5;229m\033[30;48;5;229m\] \h \[\033[0m\]\
\[\033[0;1;38;5;229m\033[30;48;5;229m\] \d \[\033[0m\]\
\[\033[0;1;38;5;229m\033[30;48;5;229m\] \@ \[\033[0m\]"
}

# Function to display current directory with pastel yellow background
get_box_path() {
    local dir="${PWD/#$HOME/~/}"
    echo -ne "\[\033[0;1;38;5;229m\033[30;48;5;229m\] $dir \[\033[0m\]"
}

# Custom prompt with pastel yellow colors
PROMPT_COMMAND='PS1="\n\[\033[0;1;38;5;229m\]╭─ $(get_box_info)\n\
\[\033[0;1;38;5;229m\]│─ $(get_box_path)\n\
\[\033[0;1;38;5;229m\]│\n\
\[\033[0;1;38;5;229m\]╰─⮞ \[\033[0m\]"'
