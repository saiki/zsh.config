path+=(
	$HOME/.local/bin
	$HOME/go/bin
)
export PATH

fpath+=(
	$HOME/.zsh/
)
export FPATH

# Google Cloud SDK
[ -s "$HOME/opt/google-cloud-sdk/path.zsh.inc" ] && \. $HOME/opt/google-cloud-sdk/path.zsh.inc
