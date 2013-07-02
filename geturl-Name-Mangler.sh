#!/bin/zsh -f

# URL=$(curl -sL --head http://manytricks.com/download/namemangler | awk -F' ' '/^Location.*dmg/{print $2}'| tr -d '\r')

URL='http://manytricks.com/download/namemangler'

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Name Mangler"

APPTYPE='app'

HOMEPAGE="http://manytricks.com/namemangler"

DESC="batch rename files"

echo "$HOMEPAGE
$DESC
"

exit 0


#RN: Name-Mangler


# http://manytricks.com/download/namemangler
