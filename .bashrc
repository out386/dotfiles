# This is our bashrc of love!
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# BEGIN ---------- PS1 ----------

# Colours start with \033[38;5;NUMBERm
# To get all the colours in that range:
# for i in {1..255} ; do printf "\033[38;5;${i}m> ${i} " ; done ; echo

# Although the last character ('⮚') should show up in most of the terminals,
# But there are many terminals that can't show the character
# In that case, use anything of your choice, or simply nothing!
LAST_CHARACTER="\342\256\232"

# declare the PS1
declare -x PS1="\[\033[38;5;204m\]\342\224\214\342\224\204\[\033[38;5;34m\]\342\224\204[\[\033[38;5;35m\]\u\[\033[38;5;36m\]:\[\033[38;5;37m\]:\[\033[38;5;38m\]\h\[\033[38;5;39m\]]\342\224\210\[\033[38;5;219m\][\[\033[38;5;218m\]\w\[\033[38;5;217m\]]\n\[\033[38;5;204m\]\342\224\224\[\033[38;5;205m\]\342\224\200\[\033[38;5;206m\]\342\224\200\342\225\274\[\033[38;5;207m\]$LAST_CHARACTER\[\e[0m\] "

unset LAST_CHARACTER
# END ---------- PS1 ----------

# Aliases of love! You can easily uncomment them if you need!

# alias c=clear
# alias nano='nano -wl'
# alias ls='ls -sahl --color=auto'
