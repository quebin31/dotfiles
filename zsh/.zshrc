# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# ==================================================================
# Source antigen
# ==================================================================
if [[ ! -d ~/.antigen ]]; then
    echo "Downloading antigen.zsh ..."
    mkdir ~/.antigen
    curl -sL git.io/antigen > ~/.antigen/antigen.zsh
fi

source ~/.antigen/antigen.zsh

# ==================================================================
# Antigen 
# ==================================================================
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
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
alias open='xdg-open'
alias orphans='pacman -Qtqd'
alias listpkgs='expac -H M '%m\t%n' | sort -h'
alias ssh='env TERM=xterm-256color ssh'
alias ratemirrors='sudo reflector --verbose --latest=10 --age=24 --sort=rate --save=/etc/pacman.d/mirrorlist'
alias rswasm='wasm-pack'
alias please='sudo'
alias box='distrobox'
alias archbox='distrobox enter arch'
# ==================================================================

# ==================================================================
# Functions
# ==================================================================
arch-set-java() {
    sudo archlinux-java set "java-${1}-openjdk"   
}

arch-get-java() {
    archlinux-java get
}
# ==================================================================
source /opt/local/share/nvm/init-nvm.sh

eval "$(starship init zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
