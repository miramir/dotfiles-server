# разукрашиваем некоторые команды с помощью grc
[[ -f /usr/bin/grc ]] && {
	alias ping="grc --colour=auto ping"
	alias tracepath="grc --colour=auto tracepath"
	alias make="grc --colour=auto make"
	alias diff="grc --colour=auto diff"
	alias cvs="grc --colour=auto cvs"
	alias netstat="grc --colour=auto netstat"
	alias logc="grc --colour=auto cat"
	alias logt="grc --colour=auto tail"
	alias logh="grc --colour=auto head"
}

