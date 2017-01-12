
export EDITOR=/usr/local/bin/nvim


# better prompt http://askubuntu.com/questions/145618/how-can-i-shorten-my-command-line-bash-prompt
PROMPT_DIRTRIM=3
PS1='\w \u$ '

alias adb="~/Library/Android/sdk/platform-tools/adb"
alias st="git status"
alias gp="git add -p"
alias vim="nvim"
pushd () {
    command pushd "$@" > /dev/null
}
alias cd=pushd

# lahwran's history warning
# append to the history file, don't overwrite it
shopt -s histappend

# WARNING: IF BASH FAILS TO LOAD THIS, IT CAN OBLITERATE YOUR
# HISTORY. I COPY MY BASH HISTORY ON REGULAR INTERVALS AND
# BACK IT UP WITH CRASHPLAN. I'll probably make a thing to do
# that automatically eventually, but WATCH OUT FOR FAILED BASH
# STARTUPS.
HISTSIZE=10000000000000
HISTFILESIZE=10000000000000
HISTIGNORE=""
HISTCONTROL=""
export HISTTIMEFORMAT="%y-%m-%d %T "
# end history warning


# Don't do dangerous moves or copies without asking!!
alias mv="mv -i"
alias cp="cp -i"


#enable color support of ls and also add handy aliases
# http://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -1GFh'
# I find the multi-column ls output hard to scan for a particular file,
# so this shuts it off by default.
#alias ls='ls -1'

# explanation after the fact:
# lahwran: I believe this setting is to allow mouse input inside tmux. If I remember
# correctly, vim is funny about that unless you set TERM=xterm. (I'm not
# completely confident that is the origin of this setting, though.)
case "$TERM" in
    screen*)
        export TERM=xterm
        ;;
esac


alias showhidden="defaults write com.apple.finder AppleShowAllFiles YES"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles NO"


#--- mac ---
unset COLORFGBG
export PATH="/usr/local/bin:$PATH"

export PATH="$PATH:$HOME/Library/Python/2.7/bin"
export ANDROID_HOME="$HOME/adt/sdk/"
export PATH="$PATH:$HOME/adt/sdk/platform-tools"
export PATH="$PATH:$HOME/adt/sdk/tools/"

export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
alias jsc=/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc
#---end mac---
