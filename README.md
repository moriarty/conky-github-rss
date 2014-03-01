conky-github-rss
================

A simple way to add a github feed reader to conky


Install & Setup
================

requires: conky-manager and curl.

1. Read the source code. 
The instructions say to run some magic scripts so you should make sure I don't do anything evil.
I don't. It's just some sed/grep/curl and one cat command. 

2. Place ```scripts/conky-gh-rss.sh``` into your ```$PATH```
My recommendation is either copying it to ```~/bin``` or creating a link from ```~/bin/conky-gh-rss.sh``` to it. 

3. from the scripts folder, run the ```set-gh-user.sh``` or modify ```/GH-RSS/config/GH-RSS``` manually
This is just to put your github username into the feed URL

4. Put your github private rss token into ```~/.gitrsstoken``` see GITRSSTOKEN file for more details
The file above uses ```cat ~/.gitrsstoken``` so you only have it saved in one file, outside of version control

5. Copy the GH-RSS folder into ~/conky-manager


Notes
================

I wanted to have my github private news feed displayed in conky.
To my surprise conky-manager didn't have any built in RSS reader.
So I went to google and found something here:
http://obakfahad.com/archives/a-very-beautiful-conky-with-rss-feed-reader/

Which I used. and only modified slightly to make it work with GitHub feeds 

I use conky-manager. So instead of putting my modified conky scripts in password protected zip file
And instructions in a TLDR blog post, I put them here. And tired to make it a drag and drop solution.

Feedback, and pull requests welcome.

