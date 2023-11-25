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
alias sgpt='box enter arch -- sgpt'
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

if command -v starship >/dev/null; then
  eval "$(starship init zsh)"
else
  echo -n "Starship not found, do you want to install it? (y/n) "
  read -r answer

  case "$answer" in
    [yY])
      if [[ "$(uname -s)" == "Linux" ]]; then
        if grep -q -i "arch linux" /etc/os-release; then
          sudo pacman -S --noconfirm --quiet starship
        elif grep -q -i "fedora" /etc/os-release; then
          if ! dnf copr list enabled | grep -q "atim/starship"; then
            sudo dnf copr enable -y --quiet atim/starship
          fi
          sudo dnf install -y --quiet starship
        else
          echo "Unsupported Linux distribution, please install starship manually"
        fi
      elif [[ "$(uname -s)" == "Darwin" ]]; then
        if command -v port >/dev/null; then
          sudo port install -Nq starship
        else
          echo "MacPorts not found, please install it first"
        fi
      else
        echo "Unsupported operating system, please install starship manually"
      fi

      eval "$(starship init zsh)"
      ;;
    *)
      echo "Starship not installed, please install it manually or re-run this script and select 'y'"
      ;;
  esac
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/kevin/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
