## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
export PAGER=${PAGER:-less}
export LC_CTYPE=$LANG

#
# Color grep results
#
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
