layout_poetry() {
  if [[ ! -f "pyproject.toml" ]]; then
    log_error 'No pyproject.toml found. Use `poetry new` or `poetry init` to create one first.'
    exit 2
  fi

  # Try to short-circuit the need to invoke poetry, which is slow.
  if [[ -d ".venv" ]]; then
    VIRTUAL_ENV="$(pwd)/.venv"
  else
    VIRTUAL_ENV="$(poetry env info --path 2>/dev/null ; true)"
  fi

  if [[ -z $VIRTUAL_ENV || ! -d $VIRTUAL_ENV ]]; then
    log_error 'No poetry virtual environment found. Use `poetry install` to create one first.'
    exit 2
  fi

  PATH_add "$VIRTUAL_ENV/bin"
  export POETRY_ACTIVE=1
  export VIRTUAL_ENV
}
