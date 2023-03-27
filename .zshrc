echo "***source dotfile/.zshrc***"

# set PATH
PATH=${PATH}:~/tools

# PROMPT
# full path
#export PS1="[%n@%m %~ ]\$ "
#export PS1="[%n@%m %d ]\$ "
#export PS1="[%n@%m %/ ]\$ "
export PS1="[%n@%m %/ ][%h]\$ "
# current dir
#export PS1="[%n@%m %c ]\$ "
#export PS1="[%n@%m %C ]\$ "
#export PS1="[%n@%m %. ]\$ "
#export PS1="[%n@%m %. ][%h]\$ "


#set filec
autoload -U compinit && compinit

#set nobeep
setopt no_beep


#alias (usual)
alias ls='ls --color=auto -F'
#alias lm='ls -lt $1'
#alias lm='\ls -lt'
function lm (){ls -ltF $@}
function ll (){ls -lF  $@}
function la (){ls -laF  $@}
function dum (){du -k --max-depth=2 $@ | sort -n}
function findf (){find $@ -type f}
alias h='history'

function _ps1 (){export PS1="[%n@%m /$1/ %C][%h]\$ "}
function xt (){xterm -sb -geom 140x38 -n $1}
#

#aliases (git)
function git-diff (){git difftool -Y -t tkdiff --gui $@ &}



#source local
if [ -f ~/.zshrc.local ]; then
  echo "** read local settings(.zshrc.local)"
  source ~/.zshrc.local
else
  echo "** no local set"
fi

#
echo "***end of dotfile/.zshrc***"
