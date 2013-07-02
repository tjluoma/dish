#!/bin/zsh -f

	# Download link from http://www.malcolmhall.com/products/sleepdisplay/ is 404 (domain expired?)
URL='http://dl.macupdate.com/final/utilities/SleepDisplay.zip'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="SleepDisplay"

APPTYPE='app'

HOMEPAGE="http://www.malcolmhall.com/products/sleepdisplay/"

DESC="immediately put your Mac's display to sleep"

echo "$HOMEPAGE
$DESC
"

exit 0


# http://dl.macupdate.com/final/utilities/SleepDisplay.zip
