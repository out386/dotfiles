#!/usr/bin/env bash

function index {
    echo "findf arg1 [arg2]: find files containing arg1 [and arg2] in their filename"
    echo "nanof arg1 [arg2]: edit files containing arg1 [and arg2] in their filename"
    echo "grepf PATTERN FILENAME: search for PATTERN in files containing FILENAME"
    echo "grpr: fgrep -iR $@"
    echo "ebash: edit ~/.bash_aliases and source it afterwards"
    echo "hsql: connect to Heroku Postgres"
    echo "hlog: show heroku app logs"
}

function findf {
    find . -type f -iname "*$1*$2*"
}

function nanof {
    local file=$(findf $1 $2)
    nano $file
}

function getp {
	type -p pacman && pacman -Ss $1
	type -p yum && yum search $1
	type -p apt && apt-cache search $1
	type -p zypper && zypper search $1
}

function grepf {
    echo -e "\n\n\n"
    local file=$(findf $2 $3)
    for i in $file
    do
        fgrep -iHC1 $1 $i
    done
}

function grpr {
    echo -e "\n\n\n"
    fgrep -iRHC1 $@
}

function ebash {
    if [ -z ${1+x} ]
    then
        local file=$(eval echo ~/.bash_aliases)
    else
        local file=$1
    fi
    local lines=$(wc -l $file | cut -d " " -f1)
    nano +$lines $file
    source $file
}

alias hsql='heroku pg:psql'
alias hlog='heroku logs --source app'
alias hlogt='heroku logs -t --source app'

alias gadd='git add -A'
alias gcp='git cherry-pick'
alias gcmt='git commit'
alias grb='git rebase -i'
alias gstat='git status'

alias apktool='${HOME}/Android/apktool/apktool.sh'
