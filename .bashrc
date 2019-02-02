# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colours start with \033[38;5;NUMBERm
# To get all the colours in that range, run colour_tesh.sh

LAST_CHARACTER="\342\236\244"
export PS1="\[\033[38;5;204m\]\342\224\214\342\224\204\[\033[38;5;34m\]\342\224\204\[\033[38;5;38m\]\h\[\033[38;5;39m\]\342\224\210\[\033[38;5;45m\][\w]\n\[\033[38;5;204m\]\342\224\224\342\224\200\342\225\274$LAST_CHARACTER\[\033[0m\] "
unset LAST_CHARACTER
