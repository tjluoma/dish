#!/bin/zsh -f

URL='http://download.mailmate-app.com/'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="MailMate"

APPTYPE='app'

HOMEPAGE="http://mailmate-app.com"

DESC="powerful mail client"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://download.mailmate-app.com/
