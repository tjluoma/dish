#!/bin/zsh -f

URL=$(curl -sL 'http://www.timdoug.com/unpkg/'  | tr '"' '\012' | egrep '\.zip$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="unpkg"

HOMEPAGE="http://www.timdoug.com/unpkg/"

DESC="Open/unpack .pkg files without installing them"

echo "$HOMEPAGE
$DESC
"
exit 0


#RN: unpkg
# http://github.com/downloads/timdoug/unpkg/unpkg-4.5.zip
