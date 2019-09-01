#!env zsh

if [ ! -d "$HOME/.zsh" ]; then
	mkdir $HOME/.zsh
fi
cp -p ./config/*.zsh $HOME/.zsh
cp -p ./env.zsh $HOME/.zshenv
cp -p ./rc.zsh $HOME/.zshrc
