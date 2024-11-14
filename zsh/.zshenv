export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.yarn/bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/Android/flutter/bin"
export PATH="$PATH:$HOME/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.fig/bin"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:/usr/local/share/dotnet/x64"

if [[ "$(uname)" = "Darwin" ]]; then
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk11-temurin/Contents/Home"
elif [[ "$(uname -n)" =~ devbox ]]; then
    # no-op
else 
    export JAVA_HOME="/usr/lib/jvm/java-11"
fi

export VISUAL="nvim"
export EDITOR="nvim"

[ -s "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
[ -s "$HOME/.deno/env" ] && . "$HOME/.deno/env"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

