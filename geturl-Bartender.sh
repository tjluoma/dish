#!/bin/zsh -f

URL=$(curl -sL 'http://macbartender.com' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1 | sed 's#^#http://macbartender.com/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Bartender"

APPTYPE='app'

HOMEPAGE="http://macbartender.com"

DESC="Tame your menu bar"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://macbartender.com/Demo/Bartender.zip
