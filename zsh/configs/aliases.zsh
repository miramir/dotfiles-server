# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v'

# Super user
alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias ls='ls -F --color=auto'
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up

#копирование через rsycn с/на удалённую машину
alias rcp='rsync -r'

alias grep='grep --color=auto'

#настроика алиасов
autoload zmv
alias ccp='noglob zmv -CW'
alias mmv='noglob zmv -W'

alias dstat='dstat -tclpmdrny'

alias kssh="luit -encoding koi8-r ssh"
alias usshfs="sshfs -o transform_symlinks"
alias ksshfs="sshfs -omodules=iconv,from_code=koi8-r,to_code=utf8,transform_symlinks"

alias ispon='sudo pon pptp'
alias ispoff='sudo poff pptp'

alias psg='ps auwx | grep'

# более человекочитаемые df и du
alias df='df -h'
alias du='du -h'

#
# глобальные алиасы
#
alias -g H="| head"
alias -g T="| tail"
alias -g G="| grep"
alias -g L="| less"
alias -g M="| most"
alias -g B="&|"
alias -g HL="--help"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"


#конвертим вывод в utf8, а то достало
alias -g KU="| iconv -c -f koi8r -t utf8"
alias -g CU="| iconv -c -f cp1251 -t utf8"

#ну и обратно тоже
alias -g UK="| iconv -c -f utf8 -t koi8r"
alias -g UC="| iconv -c -f utf8 -t cp1251"

