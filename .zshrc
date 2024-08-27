# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="vsapsai"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git)

source $ZSH/oh-my-zsh.sh

function pman()
{
	man -t $1 | open -a Preview -f
}

alias findit="open -a Finder ."
alias mq='hg -R $(hg root)/.hg/patches'

# Mercurial requires EDITOR and HGENCODING.
export EDITOR=vim
export HGENCODING=UTF-8

# Keybindings
#
# default OS X text navigation shortcuts
# bindkey '^[[1;9D' backward-word      # Option-Left
# bindkey '^[[1;9C' forward-word       # Option-Right
# Or even better to follow advice in https://stackoverflow.com/a/31328973 and
# change hex codes sent by Option-Left, Option-Right so the shortcut still
# works in ssh.
# Currently Cmd modifier is ignored by shell.  Therefore no shortcuts with Cmd.
#bindkey '^[[D'    beginning-of-line  # Cmd-Left
#bindkey '^[[C'    end-of-line        # Cmd-Right
# Option-Backspace, Cmd-Backspace aren't supported.

# Keybindings Q&A for future myself
#
# Q: How do you know that '^[[1;9D' corresponds to Option-Left shortcut?
# A: You can obtain printable key sequence for various shortcuts by typing 
#    Ctrl-V before shortcut.  E.g. you type in shell 
#      Ctrl-V Option-Left
#    and ^[[1;9D is printed.
#
# Q: Where are commands like 'forward-word' are described?
# A: http://www.gnu.org/software/bash/manual/bashref.html#Bindable-Readline-Commands

# Customize to your needs...
