#!/bin/zsh -f

URL='http://sparkler.herokuapp.com/apps/3/download'

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Anvil"

APPTYPE='app'

HOMEPAGE="http://anvilformac.com"

DESC="easily run websites locally"

echo "$HOMEPAGE
$DESC
"


exit 0

# http://sparkler.herokuapp.com/apps/3/download
