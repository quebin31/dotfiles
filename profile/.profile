export QT_QPA_PLATFORMTHEME='gnome'
export QT_STYLE_OVERRIDE='adwaita'
export CALIBRE_USE_SYSTEM_THEME=true
export SUDO_PROMPT='Password 🔐: '
export VISUAL='nvim'
export EDITOR='nvim'
export NB_CORES=$(grep -c '^processor' /proc/cpuinfo)
export MAKEFLAGS="-j$(($NB_CORES+1)) -l${NB_CORES}"

export JAVA_HOME="/usr/lib/jvm/java"

export ANDROID_SDK_ROOT="$HOME/Android/sdk"
export RUSTC_WRAPPER="sccache"
export IGNORE_CC_MISMATH=1

# Silent JAVA_OPTIONS
_SILENT_JAVA_OPTIONS="${_JAVA_OPTIONS}"
unset _JAVA_OPTIONS
alias java="java ${_SILENT_JAVA_OPTIONS}"

if [[ -f  /home/linuxbrew/.linuxbrew/bin/brew ]]; then 
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi

source "/home/kevin/.deno/env"
