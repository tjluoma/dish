#!/bin/zsh -f

URL=$(curl -sL "http://www.elgato.com/eyetv/eyetv-3/support/update" | tr '"' '\012' | egrep '^http.*dmg' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="EyeTV"

APPTYPE='app'

HOMEPAGE="http://www.elgato.com/eyetv/"

DESC="Watch TV on your Mac"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://edgedownloads.elgato.com/eyetvdownloads/support/eyetv_361_7120.dmg
