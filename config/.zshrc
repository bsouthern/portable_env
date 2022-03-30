# ~/.zshrc
# This is a mess and needs to be cleaned up

### .zsh_history stuff ###

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
alias clear_history="truncate -s 0 ~/.zsh_history"

#
# if [[ "$OSTYPE" == "linux-gnu"* ]]; then
#         # Set pbcopy
#         alias pbcopy='xclip -selection clipboard'
#         alias pbpaste='xclip -selection clipboard -o'
# elif [[ "$OSTYPE" == "darwin"* ]]; then
#         export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
#         export GOROOT="$(brew --prefix golang)/libexec"
# else
#         # OS Unknown...
# fi
#

# Go Stuff
export GOPATH=$HOME/go
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

alias ll='ls -l'
alias la='ls -al'
alias set_proxy='function _() { export http_proxy=http://$1/;export https_proxy=https://$1/; }; _'

# Add an "alert" alias for long running commands.  Use like so:
#	sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Default to fish without changing login shell
exec fish
