alias ls='ls --color=auto'

# Define warmer yellow color
BG_WARM_YELLOW="\[\033[48;5;221m\]" # Warmer yellow background (you can try 223 too)
FG_BLACK="\[\033[30m\]"             # Black text for contrast
RESET="\[\033[0m\]"                 # Reset color

# Function to display user, host, date, and time in pill
get_box_info() {
    echo -ne "${BG_WARM_YELLOW}${FG_BLACK} \u ${RESET}\
${BG_WARM_YELLOW}${FG_BLACK} \h ${RESET}\
${BG_WARM_YELLOW}${FG_BLACK} \d ${RESET}\
${BG_WARM_YELLOW}${FG_BLACK} \@ ${RESET}"
}

# Function to display current directory with refined yellow background
get_box_path() {
    local dir="${PWD/#$HOME/~/}"
    echo -ne "${BG_WARM_YELLOW}${FG_BLACK} $dir ${RESET}"
}

# Custom prompt with extra space between top and bottom pill
PROMPT_COMMAND='PS1="\n\[\033[0;1;38;5;221m\]╭─ $(get_box_info)\n\
\[\033[0;1;38;5;221m\]│\n\
\[\033[0;1;38;5;221m\]│─ $(get_box_path)\n\
\[\033[0;1;38;5;221m\]│\n\
\[\033[0;1;38;5;221m\]╰─⮞ \[\033[0m\]"'
