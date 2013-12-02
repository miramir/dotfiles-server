# todo: Доработать установку и обновление
# Check for updates on initial load...
#if [ "$DISABLE_AUTO_UPDATE" != "true" ]
#then
#  /usr/bin/env ZSH=$ZSH zsh $ZSH/tools/check_for_upgrade.sh
#fi

for config_file ($ZSH/configs/*.zsh) source $config_file

is_plugin() {
  local base_dir=$1
  local name=$2
  test -f $base_dir/plugins/$name/$name.plugin.zsh \
    || test -f $base_dir/plugins/$name/_$name
}

# Добавляем все объявленные плагины в fpath. Это должно быть сделано до запуска compinit.
for plugin ($plugins); do
  if is_plugin $ZSH $plugin; then
    fpath=($ZSH/plugins/$plugin $fpath)
  fi
done

# автоматическое удаление одинакового из этого массива
typeset -U path cdpath fpath manpath

# загружаем список цветов
autoload colors && colors

# Load and run compinit
autoload -U compinit
compinit -i


# Загружаем все плагины описанные в ~/.zshrc
for plugin ($plugins); do
  if [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done

# Load the theme
if [ ! "$ZSH_THEME" = ""  ]
then
	if [ -f "$ZSH/themes/$ZSH_THEME.zsh-theme" ]
	then
		source "$ZSH/themes/$ZSH_THEME.zsh-theme"
	fi
fi

