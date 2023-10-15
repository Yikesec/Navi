# ~/.zshrc
clear


export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Keybindings for history navigation
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Custom Functions
display_uptime() {
    uptime_in_seconds=$(awk '{print int($1)}' /proc/uptime)
    uptime_ascii_art=$(toilet -f future "Uptime: $uptime_in_seconds s")
    echo -e "\e[38;2;163;93;109m$uptime_ascii_art\e[0m"
}

display_kernel() {
    kernel_info=$(uname -r)
    kernel_ascii_art=$(toilet -f future "Kernel: $kernel_info")
    echo -e "\e[38;2;163;93;109m$kernel_ascii_art\e[0m"
}

cd() {
    builtin cd "$@" && ls
}

count_files_and_dirs() {
    num_files=$(find . -maxdepth 1 -type f | wc -l)
    num_dirs=$(find . -maxdepth 1 -type d | wc -l)
    echo -e "\e[38;2;163;93;109mFiles: $num_files, Directories: $num_dirs\e[0m"
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)     echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

weather() {
    city="${1:-YOUR_DEFAULT_CITY}"
    curl "wttr.in/$city"
}

# Alias definitions
alias l='exa'
alias ls='exa'
alias l.='exa -d .*'
alias la='exa -a'
alias ll='exa -Fhl'
alias ll.='exa -Fhl -d .*'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias rm='rm -i'
# Banner & Prompt custom
generate_banner() {
    local color_code="38;2;163;93;109"

    echo -e "\e[${color_code}m┌───────────────────────────────────────────────────────────────────────────────────────────────┐"
    echo -e "\e[${color_code}m│                                                                                               │"
    echo -e "\e[${color_code}m│    ██╗      █████╗ ██╗███╗   ██╗    ██╗██╗    ██╗ █████╗ ██╗  ██╗██╗   ██╗██████╗  █████╗     │"
    echo -e "\e[${color_code}m│    ██║     ██╔══██╗██║████╗  ██║    ██║██║    ██║██╔══██╗██║ ██╔╝██║   ██║██╔══██╗██╔══██╗    │"
    echo -e "\e[${color_code}m│    ██║     ███████║██║██╔██╗ ██║    ██║██║ █╗ ██║███████║█████╔╝ ██║   ██║██████╔╝███████║    │"
    echo -e "\e[${color_code}m│    ██║     ██╔══██║██║██║╚██╗██║    ██║██║███╗██║██╔══██║██╔═██╗ ██║   ██║██╔══██╗██╔══██║    │"
    echo -e "\e[${color_code}m│    ███████╗██║  ██║██║██║ ╚████║    ██║╚███╔███╔╝██║  ██║██║  ██╗╚██████╔╝██║  ██║██║  ██║    │"
    echo -e "\e[${color_code}m│    ╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝    ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝    │"
    echo -e "\e[${color_code}m│                                                プロジェクト『ナビ』、小林@ふもせく 製作.      │"
    echo -e "\e[${color_code}m└───────────────────────────────────────────────────────────────────────────────────────────────┘\e[0m"
}

display_random_lain_quote() {
    quotes_file_path="$HOME/lain_quotes.txt"
    if [ -f "$quotes_file_path" ]; then
        awk -v var=$((RANDOM%$(wc -l < "$quotes_file_path"))) 'NR==var {print $0}' "$quotes_file_path"
    else
        echo "Quote file not found!"
    fi
}

# Display the single-color banner
generate_banner
# Display a random Lain quote
display_random_lain_quote

# Custom prompt
local color_code="38;2;163;93;109"
PROMPT=$'%{\e[0;${color_code}m%}┌─[%{\e[1;${color_code}m%}%B%{${TNAME}%}%{\e[1;94m%}@%{\e[1;95m%}Navi%b%{\e[0;${color_code}m%}]─[%{\e[1;93m%}%~%{\e[0;${color_code}m%}]\n└──╼ ❯❯❯ %{\e[0m%}'

# Other settings and configurations
HIST_STAMPS="yyyy-mm-dd"
DISABLE_AUTO_UPDATE="true"
