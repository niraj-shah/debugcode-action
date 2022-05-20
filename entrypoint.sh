#!/bin/sh

search_result=$(egrep -r -i 'print(.*)\(user!?.token' $GITHUB_WORKSPACE)

if [[ $search_result ]]; then
    echo "Potential tokens found! \n $search_result"
    exit 1
else
    echo "Eveything *looks* ok!"
fi
