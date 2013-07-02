#!/bin/zsh -f

URL=$(curl -sL 'http://www.alfredapp.com/' | tr '"' '\012' | egrep '^http.*zip' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Alfred"

APPTYPE='app'

HOMEPAGE="http://www.alfredapp.com/"

DESC="Launcher Extraordinaire"

echo "$HOMEPAGE
$DESC
"


exit 0


#RN: Alfred


# http://cachefly.alfredapp.com/Alfred_2.0.5_202.zip
