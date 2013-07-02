#!/bin/zsh -f

URL=($(VERSION=`curl -sL 'https://www.dropbox.com/install' | tr -d '\012' | sed 's#.*version_str">##g ; s# .*##g'` ; echo "https://dl.dropboxusercontent.com/u/17/Dropbox%20${VERSION}.dmg"))

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Dropbox"

APPTYPE='app'

HOMEPAGE="http://dropbox.com/install"

DESC="It's a folder that syncs. Current official release version."

echo "$HOMEPAGE
$DESC
"

exit 0

# https://dl.dropboxusercontent.com/u/17/Dropbox%202.2.3.dmg
