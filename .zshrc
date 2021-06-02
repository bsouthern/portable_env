# ~/.zshrc

eval "$(starship init zsh)"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Set pbcopy
        alias pbcopy='xclip -selection clipboard'
        alias pbpaste='xclip -selection clipboard -o'
elif [[ "$OSTYPE" == "darwin"* ]]; then
        export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
        export GOROOT="$(brew --prefix golang)/libexec"
else
        # OS Unknown...
fi

# Go Stuff
export GOPATH=$HOME/go
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

alias ll='ls -l'
alias la='ls -al'
alias cat='bat'
alias tping='ping -c 3 8.8.8.8'
alias set_proxy='function _() { export http_proxy=http://$1/;export https_proxy=https://$1/; }; _'
alias clear_proxy='export http_proxy="" && export https_proxy=""'
alias getip='printf "   Local: "; ifconfig -l | xargs -n1 ipconfig getifaddr; printf "External: "; dig +short myip.opendns.com @resolver1.opendns.com'
