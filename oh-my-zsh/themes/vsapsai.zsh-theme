function prompt_char {
	git branch >/dev/null 2>/dev/null && echo '±' && return
	hg root >/dev/null 2>/dev/null && echo '☿' && return
	echo '$'
}

PROMPT='%{$fg_bold[green]%}%n%{$reset_color%} in %{$fg_bold[yellow]%}%~%{$reset_color%}
$(prompt_char) '

