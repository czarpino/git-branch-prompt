#!/bin/bash

function get_git_branch() {
    if [ "$PWD" != "$MYOLDPWD" ] || [ $is_checkout ]; then
        MYOLDPWD="$PWD"
        git_branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
        unset is_checkout
    fi
}

function capture_command() {
    if [[ "$BASH_COMMAND" == "git checkout"* ]]; then
        is_checkout=true
    fi
}

trap capture_command DEBUG

PROMPT_COMMAND="get_git_branch; $PROMPT_COMMAND"
