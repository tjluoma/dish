#!/bin/zsh -f

URL=$(curl -sL 'http://www.red-sweater.com/fastscripts/' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1 | sed 's#^#http://www.red-sweater.com/fastscripts/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="FastScripts"

APPTYPE='app'

HOMEPAGE="http://www.red-sweater.com/fastscripts/"

DESC="AppleScript launcher"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://www.red-sweater.com/fastscripts/FastScripts2.6.5.zip
