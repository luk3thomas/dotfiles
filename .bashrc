# hack for tmux
if [ -f /etc/profile ]; then
  PATH=""
  source /etc/profile
fi

set -o vi
export EDITOR='vim'

PS1="\u@\H: \w \$ "
PS1="\u \e[0;33m\]\w\e[0;32m\]\e[1;30m\]\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \1/')\e[0;32m\] \e[0;37m\]$\e[0;32m\] "

PATH=$PATH:~/bin
PATH=$PATH:/usr/local/heroku/bin
PATH=$PATH:/usr/local/opt/gnu-sed/libexec/gnubin
PATH=$PATH:/usr/local/Cellar/vim/7.3.783/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PGDATA=/usr/local/var/postgres

# tab completion for ssh
complete -o default -o nospace -W "$(/usr/bin/ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh

# tab completion for git
source ~/.git-completion.sh

# some more ls aliases
alias c='clear'
alias bx='bundle exec'
alias ll='ls -l'
alias i='identify'
alias la='ls -A'
alias lla='ls -lA'
alias lh='ls -lh'
alias l='ls -CF'
alias o='open'
alias i='identify'
alias m='mysql -uroot'
alias md='mysqldump -uroot'
alias ms='mysqlshow -uroot'
alias ga="git add"
alias gaa="git add ."
alias gad="git add -u ."
alias gb="git branch"
alias gm="git commit -m"
alias gr="git remote"
alias grm="git rm"
alias gc="git checkout"
alias gca="git commit --amend"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log --graph --pretty=format:'%h | %cr | %cn | %s'"
alias gp="git push --tags"
alias gits="git status"
alias gg="git status"
alias sencha="/opt/SenchaSDKTools-2.0.0-beta2/sencha"
alias rgrep="egrep -r"
alias rfgrep="grep -r -F"
alias fgrep="find . -type f | egrep"
alias pgrep="ps -e | grep"
alias now="date +%Y%m%d%H%M%S"
alias localhost="sudo chown luk3:www-data -Rv"
alias brake="bundle exec rake"
alias server="python -m SimpleHTTPServer"
alias math="bc -l"
alias tmux="tmux -2"
alias ts="tmux list-sessions"
alias tl="tmux list-sessions"
alias tk="tmux kill-session -t"
alias tka="tmux kill-server"
alias ta="tmux attach-session"

alias pgimport="pg_restore --verbose --clean --no-acl --no-owner -h localhost"

export CLICOLOR=1

export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'
