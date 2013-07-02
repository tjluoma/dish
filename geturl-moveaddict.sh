#!/bin/zsh -f

# 2013-06-27
# moveAddict is dead :-(

# URL='http://kapeli.com/moveAddict.dmg'

URL='http://files.tjluoma.com/attic/moveAddict/moveAddict-2.26.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

HOMEPAGE='(null)'

APPNAME="moveAddict"

DESC="Adds 'cut' functionality to Finder. Sadly discontinued."

echo "$HOMEPAGE
$DESC
"

exit 0

# http://files.tjluoma.com/attic/moveAddict/moveAddict-2.26.dmg
