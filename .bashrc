HISTSIZE=
HISTFILESIZE=
export GPG_TTY=$(tty)

# hack for tmux
if [ -f /etc/profile ]; then
  PATH=""
  source /etc/profile
fi

set -o vi
export EDITOR='vim'

PS1="\u@\H: \w \$ "
PS1="\u \[\e[0;33m\]\]\w\[\e[0;32m\]\]\[\e[1;30m\]\]\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \1/')\[\e[0;32m\]\] \[\e[0;37m\]\]$\[\e[0;32m\]\] "
PS1="\e[94m\w\e[90m\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \1/')\e[39m \n$ "
#PS1="\e[94m\w\e[95m \$(date +%H:%M:%S)\e[90m\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \1/')\e[39m \n$ "


export GOPATH=$HOME/go
export HISTFILESIZE=

PATH=/usr/local/bin:$PATH
PATH=./bin:$PATH
PATH=~/bin:$PATH
PATH=$GOPATH/bin:$PATH
PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export NVM_DIR=~/.nvm

export PGDATA=/usr/local/var/postgres

# tab completion for ssh
complete -o default -o nospace -W "$(/usr/bin/ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh
complete -o default -o nospace -W "$(ls $HOME/.tmuxinator/*.yml | awk -F '/' '{print $NF}' | sed 's/\.yml//')" mux
# tab completion for make
complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make


# tab completion for git
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# some more ls aliases
alias gp="git push origin head"
alias c='clear'
alias b='bundle exec'
alias be='bundle exec'
alias br='bundle exec rake'
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
alias gb="git branch --sort=-committerdate"
alias gm="git commit -m"
alias gr="git remote"
alias grm="git rm"
alias gc="git checkout"
alias gca="git commit --amend"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log --graph --pretty=format:'%h%C(yellow)%d%C(reset) | %cr | %cn | %s'"
alias gp="git push --tags"
alias gits="git status"
alias gg="git status"
alias rgrep="egrep -r"
alias rfgrep="grep -r -F"
alias fgrep="find . -type f | egrep"
alias pgrep="ps -e | grep"
alias now="date +%Y%m%d%H%M%S"
alias localhost="sudo chown luk3:www-data -Rv"
alias brake="bundle exec rake"
alias server="python -m http.server"
alias math="bc -l"
alias tmux="tmux -2"
alias ts="tmux list-sessions"
alias tl="tmux list-sessions"
alias tk="tmux kill-session -t"
alias tka="tmux kill-server"
alias ta="tmux attach-session -t"
alias t="todo"
alias aws_account_id="aws sts get-caller-identity | jq .Account | sed 's/\"//g' | pbcopy"
alias aws_get_classic_load_balancers="aws elb describe-load-balancers | jq .LoadBalancerDescriptions[].DNSName | sed 's/\"//g'"
alias aws_get_load_balancers="aws elbv2 describe-load-balancers | jq .LoadBalancers[].DNSName | sed 's/\"//g'"

alias pgimport="pg_restore --verbose --clean --no-acl --no-owner -h localhost"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop"

complete -C $(which aws_completer) aws

export CLICOLOR=1

export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='0;35;40'

source ~/.bashrc-includes/*

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

_apex()  {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

complete -F _apex apex

# asdf plugins
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lthomas1/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/lthomas1/Downloads/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/Users/lthomas1/env' ]; then source '/Users/lthomas1/env'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lthomas1/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/lthomas1/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/lthomas1/.asdf/installs/nodejs/12.0.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/lthomas1/.asdf/installs/nodejs/12.0.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash

if [ -s $HOME/.aaws/aaws.sh ]; then
  source $HOME/.aaws/aaws.sh
fi

function aws_lookup_private_ip_by_public() {
  aws ec2 describe-instances --filters Name=ip-address,Values=$1 | jq .Reservations[].Instances[].NetworkInterfaces[].PrivateIpAddress
}

function aws_ecs_list_all_services() {
  aws ecs list-clusters | jq .clusterArns[] | sed 's/"//g' | while read l; do
    echo $l
    aws ecs list-services --cluster $l | jq .serviceArns[]
    echo
  done
}

function aws_ec2_search() {
  aws ec2 describe-instances --query 'Reservations[*].Instances[*].{Name:Tags[?Key==`Name`]|[0].Value,Ip:PrivateIpAddress}' --output text --filter "Name=tag:Name,Values=*$1*" | sort -k 2 -t "\t"
}

function ecs_cli_ps() {
  ecs-cli ps --cluster $(aws ecs list-clusters | jq .clusterArns | grep "$1" | sed -r 's/\"|,//g')
}

# Created by `userpath` on 2020-11-02 17:13:50
export PATH="$PATH:/Users/lthomas1/.local/bin"

eval "$(asdf exec direnv hook bash)"
direnv() { asdf exec direnv "$@"; }


