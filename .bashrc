echo "***source dotfile/.bashrc***"

#set prompt=
export PS1="[\u@\h \w]\\$ "
#export PS1="[\u@\h \W]\\$ "

#set filec

#set nobeep
set bell-style none

#set DISPLAY=


#aliases (common)
alias cp="\cp -i"
alias rm="\rm -i"
alias mv="\mv -i"
alias ls="ls -F --color" # --color==auto"
alias h="history"

function lm (){
        ls -ltF $@
}

function ll (){
        ls -lF $@
}

function la (){
        ls -laF $@
}

function dum (){
        du -k -d2 $@ | sort -n
}

function findf (){
        find $@ -type f
}

#function xt (){
#        xterm -sb -geom 140x38 -n $1
#}


#aliases (git)
function git-diff (){
        git difftool -y -t tkdiff $1 &
}


#source local
if [ -f ~/.bashrc.local ]; then
  echo "** read local settings(.bashrc.local)"
  source ~/.bashrc.local
else
  echo "** no local set"
fi


echo "***end of dotfile/.bashrc***"
