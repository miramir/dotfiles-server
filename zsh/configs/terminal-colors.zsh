if [ -e /usr/share/terminfo/x/xterm-256color ] || [ -e /lib/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

