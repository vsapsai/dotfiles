function prompt_char {
	git branch >/dev/null 2>/dev/null && echo '±' && return
	hg root >/dev/null 2>/dev/null && echo '☿' && return
	echo '$'
}

local PREVIOUS_EXIT_CODE=%(?.. %{$fg[red]%}(%?%)%{$reset_color%})

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git #svn
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:*' formats ' [%b%u%c]'
zstyle ':vcs_info:*' actionformats ' [%a|%b%u%c]'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'

precmd() {
    vcs_info
}

setopt prompt_subst
PROMPT='%{$fg[green]%}%n%{$reset_color%} in %{$fg_bold[blue]%}%~%{$reset_color%}${vcs_info_msg_0_}${PREVIOUS_EXIT_CODE}
$(prompt_char) '

