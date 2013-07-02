#!/bin/zsh -f

URL=$(curl -sL 'http://versioncheck.barebones.com/BBEdit.xml' | fgrep .zip | tail -1f | sed 's#.*<string>##g; s#</string>##g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="BBEdit"

APPTYPE='app'

HOMEPAGE="http://barebones.com/bbedit"

DESC="A text editor that doesn't suck."

echo "$HOMEPAGE
$DESC
"


exit 0


#RN: BBEdit


# https://s3.amazonaws.com/BBSW-download/BBEdit_10.5.4.zip
