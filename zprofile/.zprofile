export QT_STYLE_OVERRIDE=kvantum
export SUDO_PROMPT='Password 🔐: '
export VISUAL="nvim"
export EDITOR="nvim"
export NB_CORES=$(grep -c '^processor' /proc/cpuinfo)
export MAKEFLAGS="-j$(($NB_CORES+1)) -l${NB_CORES}"

export JAVA_HOME="/usr/lib/jvm/$(archlinux-java get)"

export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"
export PATH="$PATH:$HOME/.pub-cache/bin:$HOME/Android/flutter/bin"
export PATH="$PATH:$HOME/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/.cargo/bin"

export ANDROID_SDK_ROOT="$HOME/Android/sdk"

export RUSTC_WRAPPER="sccache"
