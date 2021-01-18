# Updates on cmd prompt to display git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if (( $EUID == 0 )); then
  PS1_SUFFIX='#'
else
  PS1_SUFFIX='$'
fi

export PS1="\u@\h\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$PS1_SUFFIX "

# Start SSH agent
eval $(ssh-agent -s)

# Add aliases
source ~/.bash_aliases

# Set Timezone
export TZ='Asia/Kolkata'
