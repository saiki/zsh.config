function peco_history_selection() {
    BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco_history_selection
bindkey '^R' peco_history_selection

function peco_cdr () {
    local selected_dir="$(cdr -l | sed 's/^[0-9]\+ \+//' | peco --prompt="cdr >" --query "$LBUFFER")"
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
}
zle -N peco_cdr
bindkey '^L' peco_cdr

function peco_goto_repository () {
	if [ -n "$LBUFFER" ]; then
		local selected_dir=$(ghq list | peco --query "$LBUFFER" )
	else
		local selected_dir=$(ghq list | peco)
	fi
	local root_dir=$(ghq root)
	BUFFER="cd ${root_dir}/${selected_dir}"
	zle accept-line
}

zle -N peco_goto_repository
bindkey '^G' peco_goto_repository
