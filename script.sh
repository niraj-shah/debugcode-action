#!/bin/sh

if egrep -r -i 'print(.*)\(user!?.token' $GITHUB_WORKSPACE; then
    echo "Potential tokens found! \n $search_result"
    exit 1
else
    echo "Eveything *looks* ok!"
    exit 0
fi