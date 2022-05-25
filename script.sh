#!/bin/bash

# find uncommented print statements
tokens=$(egrep -r -i '^([^//]*)\s?print([a-zA-Z]*)\(\$?(user)?(!)?(.)?token' $GITHUB_WORKSPACE)

if [ -n "$tokens" ]; then
    while IFS= read -r line
    do
        echo "::warning::$line"
    done <<< "$tokens"

    echo "::error::Potential tokens found!"
    exit 1
else
    echo "::notice::Eveything *looks* ok!"
    exit 0
fi