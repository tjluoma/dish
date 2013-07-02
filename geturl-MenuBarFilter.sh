#!/bin/zsh -f

URL='http://eece.github.com/MenuBarFilter/MenuBarFilter.zip'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="MenuBarFilter"

APPTYPE='app'

HOMEPAGE="http://eece.github.io/MenuBarFilter/"

DESC="make your menubar black"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://eece.github.com/MenuBarFilter/MenuBarFilter.zip
