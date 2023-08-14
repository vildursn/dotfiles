prompt_components=(
	# Username and hostname.
	"%{$FG[245]%}%n@%m%{$reset_color%} "

	# Working directory.
	"%{$fg[cyan]%}%1~%{$reset_color%} "

	# Git status.
	'$(git_prompt_info)'

	# Prompt symbol colored by last command status
	"%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)%{$reset_color%} "
)

PROMPT=$(printf "%s" ${prompt_components[@]})

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"
