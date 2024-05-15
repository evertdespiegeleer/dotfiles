if [ -d "/home/linuxbrew/.linuxbrew/Homebrew" ]; then
    export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew/Homebrew"
elif [ -d "/opt/homebrew/bin" ]; then
    export HOMEBREW_PREFIX="/opt/homebrew"
elif [ -d "/usr/local/Homebrew/bin" ]; then
    export HOMEBREW_PREFIX="/usr/local/Homebrew"
fi

export PATH="$HOMEBREW_PREFIX/bin:$PATH"