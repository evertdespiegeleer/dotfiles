alias k='kubectl $*'
alias ksecret="jq '.data | map_values(@base64d)'"