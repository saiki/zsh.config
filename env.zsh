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

# install rbenv
if [ -s $HOME/.rbenv/bin ]; then
  path+=(
    $HOME/.rbenv/bin
  )
fi

# install rust
if [ -s $HOME/.cargo/bin ]; then
  path+=(
    $HOME/.cargo/bin
  )
fi
