# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# ==================================================================
# Source zplug
# ==================================================================
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

# ==================================================================
# Zplug
# ==================================================================
zplug "ohmyzsh/ohmyzsh", use:"lib/*.zsh"
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load 
# ==================================================================

# ==================================================================
# Reload completions
# ==================================================================
zstyle ':completion:*' rehash true

# ==================================================================
# Exports
# ==================================================================
export LS_COLORS=$LS_COLORS:'tw=35;04':'ow=34;04'

# ==================================================================
# Aliases
# ==================================================================
alias nv='nvim'
alias lsd='lsd --icon=never'
alias ls='lsd --group-dirs first'
alias ll='ls -l -h'
alias la='ls -a'
alias lt='ls --tree'
alias zshrc='nvim ~/.zshrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias adb-restart='adb kill-server && adb start-server'
alias open='xdg-open'
alias orphans='pacman -Qtqd'
alias listpkgs='expac -H M '%m\t%n' | sort -h'
alias cls='printf "\033c"'
alias ssh='env TERM=xterm-256color ssh'
alias lgit='lazygit'
alias slides='pdfpc'
alias wine64='WINEPREFIX=~/.wine WINEARCH=win64 wine'
alias wine32='WINEPREFIX=~/.wine32 WINEARCH=win32 wine'
alias c++11='g++ -std=gnu++11'
alias c++14='g++ -std=gnu++14'
alias c++17='g++ -std=gnu++17'
alias c++20='g++ -std=gnu++2a -fconcepts'
alias ratemirrors='sudo reflector --verbose --latest=10 --age=24 --sort=rate --save=/etc/pacman.d/mirrorlist'
alias rswasm='wasm-pack'
alias please='sudo'
# ==================================================================

# ==================================================================
# Functions
# ==================================================================
set-java() {
    sudo archlinux-java set "java-${1}-openjdk"   
}

get-java() {
    archlinux-java get
}
# ==================================================================

eval "$(starship init zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
