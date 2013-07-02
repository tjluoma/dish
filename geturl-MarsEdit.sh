#!/bin/zsh -f

URL=$(curl -sL 'http://www.red-sweater.com/marsedit/appcast3.php' | tr '"' '\012' | egrep '^http://.*\.zip' | head -1)


[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="MarsEdit"

APPTYPE='app'

HOMEPAGE="http://www.red-sweater.com/marsedit/"

DESC="Desktop blogging"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://www.red-sweater.com/marsedit/MarsEdit3.6.zip
