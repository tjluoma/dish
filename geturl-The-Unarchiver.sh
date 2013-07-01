#!/bin/zsh -f

URL=$(curl -sL "http://wakaba.c3.cx/s/apps/unarchiver.html"  | tr '"' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="The Unarchiver"

HOMEPAGE="http://wakaba.c3.cx/s/apps/unarchiver.html"

DESC="'Opens anything' unarchiver"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: The-Unarchiver


# http://theunarchiver.googlecode.com/files/TheUnarchiver3.7.zip
