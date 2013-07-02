#!/bin/zsh -f

URL='http://www.charcoaldesign.co.uk/magical/download/intel'

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="MagiCal"

APPTYPE='app'

HOMEPAGE="http://www.charcoaldesign.co.uk/magical/"

DESC="menu bar clock and calendar"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://www.charcoaldesign.co.uk/magical/download/intel
