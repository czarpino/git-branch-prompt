# Git Branch Prompt

Display the current Git branch with no frills and minimal performance impact.

## Overview

Whenever inside a Git repository, prompt will display the current Git branch. This conveniently lets you know you are inside a Git repo and on what branch.

## Installation

1. Clone the project into `~/.bash`

        mkdir ~/.bash
        cd ~/.bash
        git clone git@github.com:czarpino/git-branch-prompt.git

2. Edit `~/.bash_profile`

        source ~/.bash/git-branch-prompt/main.sh
		export PS1="\W \e[0;36m\]\$git_branch\e[0;31m\]\$git_dirty\e[0m\]\$ "

3. Open a new terminal or execute `source ~/.bash_profile` for the changes to take effect

![Git Branch Prompt Preview](https://raw.github.com/czarpino/git-branch-prompt/master/preview.png)
