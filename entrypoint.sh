#!/bin/sh

search_result=$(egrep -r -i 'print(.*)\(user!?.token' $GITHUB_WORKSPACE)

echo $search_result

if [[ $search_result ]]; then
    echo "Potential tokens found! \n $search_result"
    exit 1
else
    echo "Eveything *looks* ok!"
fi
