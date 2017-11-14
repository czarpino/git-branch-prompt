function get_git_branch() {
	git_branch=$(grep -s "" .git/HEAD | cut -d \/ -f 3)
}

PROMPT_COMMAND="get_git_branch; $PROMPT_COMMAND"