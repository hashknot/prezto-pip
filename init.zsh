# If you would like to clear your cache, go ahead and do a
# "pip-clear-cache".

if (( ! ( $+commands[pip]     || \
          $+commands[pip2]    || \
          $+commands[pip-2.7] || \
          $+commands[pip3]    || \
          $+commands[pip-3.2] || \
          $+commands[pip-3.3] || \
          $+commands[pip-3.4]    \
       )
    )); then
    return 1
fi

autoload -Uz _pip
compdef _pip pip pip2 pip-2.7 pip3 pip-3.2 pip-3.3 pip-3.4
