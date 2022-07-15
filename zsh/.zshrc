# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# ==================================================================
# source antigen
# ==================================================================
source ~/.antigen/antigen.zsh

# ==================================================================
# Antigen
# ==================================================================
antigen use oh-my-zsh

# Bundles
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done
antigen apply
# ==================================================================

# ==================================================================
# reload completions
# ==================================================================
zstyle ':completion:*' rehash true

# ==================================================================
# exports
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
