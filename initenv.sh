#! /bin/bash

#zsh
ln -s ${HOME}/.config/zsh/zshrc ${HOME}/.zshrc

#mc
mkdir -p ${HOME}/.local/share/mc
ln -s ${HOME}/.config/mc/skins ${HOME}/.local/share/mc/skins

#bash
echo "
which zsh >/dev/null 2>&1 && {
	export SHELL=/bin/zsh
	exec zsh -l
}
" > ${HOME}/.bash_profile
