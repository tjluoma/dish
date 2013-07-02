#!/bin/zsh -f

URL='http://cdn.conversationsnetwork.org/Levelator-2.1.1.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Levelator"

HOMEPAGE="http://www.conversationsnetwork.org/levelator"

DESC="'levels' sound from AIFF or WAV files. Sadly discontinued."

echo "$HOMEPAGE
$DESC
"



exit 0

# http://cdn.conversationsnetwork.org/Levelator-2.1.1.dmg
