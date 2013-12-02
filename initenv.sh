#! /bin/bash

#zsh
ln -s ${HOME}/.config/zsh/zshrc ${HOME}/.zshrc

#vim
VIM_DIR="${HOME}/.config/vim"
VIMRC="vimrc"
DOT_VIMRC=".vimrc"
VUNDLE_DIR="bundle/vundle"

if [[ -e ${VIM_DIR}/${VUNDLE_DIR} ]]; then
        rm -rf ${VIM_DIR}/${VUNDLE_DIR}
fi

git clone git://github.com/gmarik/vundle.git ${VIM_DIR}/${VUNDLE_DIR} > /dev/null
if [[ -e ${HOME}/${DOT_VIMRC} ]]; then
        rm -f ${HOME}/${DOT_VIMRC}
fi

ln -s ${VIM_DIR}/${VIMRC} ~/${DOT_VIMRC}

vim +BundleInstall +quitall

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
