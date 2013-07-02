#!/bin/zsh -f

URL=$(curl -sL "http://www.apparentsoft.com/trickster/download"  | tr '"' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Trickster"

APPTYPE='app'

HOMEPAGE="http://www.apparentsoft.com/trickster/"

DESC="Track/search recently used files"

echo "$HOMEPAGE
$DESC
"

exit 0


# http://dl.apparentsoft.com/Trickster.zip
