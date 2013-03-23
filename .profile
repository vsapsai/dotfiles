# Shell prompt
PS1="\u:\W \$ "

function pman()
{
	man -t $1 | open -a Preview -f
}

