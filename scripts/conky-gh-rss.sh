#!/bin/bash

uri="$1"		#URI of RSS Feed
lines="$2"		#Number of headlines
default_uri="https://github.com/blog.atom"
default_lines=10

function read_rss {
    # set defaults if args not provided
    if [[ -z "$uri"  ]]; then 
        uri=$default_uri
    fi
    if [[ -z "$lines" ]]; then 
        lines=$default_lines 
    fi

    curl -s --connect-timeout 30 $uri |\
    sed -e 's/<\/title>/\n/g' |\
    grep -o '<title.*>.*' |\
    sed -e 's/<title.*>//' |\
    head -n $(($lines))
}

read_rss

