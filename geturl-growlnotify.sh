#!/bin/zsh -f

URL=$(curl -s 'http://growl.info/downloads' | fgrep -i growlnotify | tr '"' '\012' | egrep '^http' | sort -u | tail -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="growlnotify"

TYPE='pkg'

HOMEPAGE="http://growl.info/downloads"

DESC="send Growl notifications from the command-line"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: growlnotify


# http://growl.cachefly.net/GrowlNotify-2.0.zip
