if [[ -n "$HOMEBREW_PREFIX" ]]; then
  eval "\$(${HOMEBREW_PREFIX}/bin/brew shellenv)"
else
  eval /opt/homebrew/bin/brew shellenv
fi