parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\e[90m\h:\W\e[33m\$(parse_git_branch) \e[0m→ "

. ~/Me/git/aliases
