#!/usr/bin/env bash

USERNAME=`git config user.name`

if [ -f ../GH-RSS/config/RSS ]; then
    RSSCONFIG=../GH-RSS/config/RSS
else
    echo "GH-RSS config file not found."
    echo "please see the script."
    exit
fi

if [[ -z "$USERNAME" ]]; then
    echo "please configure your github username"
    echo "or edit $RSSCONFIG manually"
    exit
fi

sed -i "s/GITHUBUSERID/${USERNAME}/g" $RSSCONFIG 

