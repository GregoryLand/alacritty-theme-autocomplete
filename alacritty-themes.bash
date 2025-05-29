_list_themes()
{
	_themes=$(alacritty-theme --list-themes)
	local cur
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	COMPREPLY=( $(compgen -W "${_themes}" -- ${cur}) )

}
complete -o nospace -F _list_themes alacritty-theme
