# Git Branch Prompt

Show current git branch in bash prompt with a thought on performance. Approach is based on basic `git rev-parse` so on a well spec'ed computer optimizations employed here would be completely unnoticeable. For those who do find it noticeable, this is a slightly faster alternative.

## How to

1. Clone the project into `~/.bash`

        mkdir ~/.bash
        cd ~/.bash
        git clone git@github.com:czarpino/git-branch-prompt.git

2. Edit `~/.bash_profile`

        source ~/.bash/git-branch-prompt/main.sh
		export PS1="\W \[\e[0;36m\]\$git_branch\[\e[0m\]\$ "

3. Open a new terminal or execute `source ~/.bash_profile` for the changes to take effect
