#!/bin/zsh -f

URL='http://www.peterborgapps.com/downloads/LingonX.zip'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

HOMEPAGE="http://www.peterborgapps.com/lingon/"

DESC="GUI front end to launchd on Mac OS X"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://www.peterborgapps.com/downloads/LingonX.zip
