# general path munging
export PATH="/usr/local/bin:/usr/bin:$PATH"

# set default ulimit
ulimit -n 10000

# git command prompt updates
# source ~/.git-completion.sh
# source ~/.git-prompt.sh

# git completion
# run `brew install git bash-completion` if you have not
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# path highlights in color
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\[\033[1;30m\]\!\[\033[0m\] \[\033[1;30m\]\u\[\033[0m\]: \[\033[1;33m\]\W\[\033[0m\]\[\033[1;92m\]$(parse_git_branch "(%s)") \[\033[0m\]$ '

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias git_token='echo PUT YOUR GIT_TOKEN HERE IF YOU HAVE ACTIVATED TWOWAY AUTH'

