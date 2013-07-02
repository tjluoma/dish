#!/bin/zsh -f

#URL=$(curl -sL 'http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html' |\
# tr '"' '\012' | egrep '\.dmg' | head -1 | sed 's#^#http://www.shirt-pocket.com#g')

URL='http://www.shirt-pocket.com/downloads/SuperDuper%21.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="SuperDuper!"

APPTYPE='app'

HOMEPAGE="http://short-pocket.com/SuperDuper"

DESC="clone your hard drive"

echo "$HOMEPAGE
$DESC
"



# http://www.shirt-pocket.com/downloads/SuperDuper%21.dmg
