_autocompleteConky() 
{
	_autocomplete_commands=$(/bin/startup_conky shortlist)
	
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="top side mid all none"
    COMPREPLY=( $(compgen -W "$opts" -- ${cur}) )
  return 0

}
complete -F _autocompleteConky startup_conky
