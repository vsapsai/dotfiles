function prompt_char {
	git branch >/dev/null 2>/dev/null && echo '±' && return
	hg root >/dev/null 2>/dev/null && echo '☿' && return
	echo '$'
}

local PREVIOUS_EXIT_CODE=%(?.. %{$fg[red]%}(%?%)%{$reset_color%})

ZSH_THEME_GIT_PROMPT_PREFIX=" ["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"

PROMPT='%{$fg[green]%}%n%{$reset_color%} in %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)${PREVIOUS_EXIT_CODE}
$(prompt_char) '

