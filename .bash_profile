# aliases
#alias python='python3'

# Terminal Colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Git aliases
alias glog='git log --oneline --decorate --graph'
alias glo='git log --oneline --decorate'
alias gca='git add . && git commit -m'
alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias gsts='git status'

# Docker aliases
alias docker-restart='docker-machine restart default && eval $(docker-machine env default)'
alias docker-vclean='docker volume rm $(docker volume ls -qf dangling=true)'
alias docker-cclean="docker ps -a | awk '/Exited/ {print $1}' | xargs docker rm -v"
alias docker-iclean='docker rmi -f $(docker images -f "dangling=true" -q)'
alias docker-clean='docker-vclean; docker-cclean; docker-iclean'

# extend the PATH variable
# include:
# 	- python modules
#	- PostgreSQL
export PATH="$PATH:/usr/local/lib/python2.7/site-packages:~/Library/Python/2.7/bin:/Library/PostgreSQL/9.6/bin"
