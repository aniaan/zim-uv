(( ${+commands[uv]} )) && () {
  local command=${commands[uv]}
  local compfile="$1/functions/_uv"

  if [[ ! -e "$compfile" || "$compfile" -ot "$command" ]]; then
    uv generate-shell-completion zsh >| "$compfile"
    zcompile -UR "$compfile"
    print -u2 -PR "* Detected a new version of 'uv'. Regenerated completions."
  fi
} "${0:h}"

(( ${+commands[uvx]} )) && () {
  local command=${commands[uvx]}
  local compfile="$1/functions/_uvx"

  if [[ ! -e "$compfile" || "$compfile" -ot "$command" ]]; then
    uvx --generate-shell-completion zsh >| "$compfile"
    zcompile -UR "$compfile"
    print -u2 -PR "* Detected a new version of 'uvx'. Regenerated completions."
  fi
} "${0:h}"

