[[ -o interactive ]] || return 

if [[ -n "$DISPLAY" || -n "$WAYLAND_DISPLAY" ]]; then

  # oh-my-posh
  if command -v oh-my-posh >/dev/null 2>&1; then
    eval "$(oh-my-posh init zsh --config 'amro')"
  fi

  # auto-start tmux
  if command -v tmux >/dev/null 2>&1; then
    if [[ -z "$TMUX" ]]; then
      tmux attach || tmux new
    fi
  fi

fi
