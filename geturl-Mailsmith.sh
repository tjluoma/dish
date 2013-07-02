#!/bin/zsh -f

URL=$(curl -sL 'http://mailsmith.org' | tr '"|\47' '\012' | egrep -i '\.dmg$' | head -1 | sed 's#^#http://mailsmith.org#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Mailsmith"

APPTYPE='app'

HOMEPAGE="http://mailsmith.org"

DESC="mail client"

echo "$HOMEPAGE
$DESC
"



exit 0
