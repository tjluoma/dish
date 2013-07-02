#!/usr/bin/env zsh -f
# get the latest stable build of Dropbox
#
# From:	Timothy J. Luoma
# Mail:	luomat at gmail dot com
# Date:	2013-06-10

POST_URL=$(curl -sL 'https://www.dropbox.com/release_notes/rss.xml' | fgrep -A1 'New Testing Build' | fgrep '<link>' | head -1 | sed 's#.*<link>##g; s#</link>##g')

URL=$(curl -sL "${POST_URL}" | awk -F'"' '/http.*dmg/{print $2}')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Dropbox Beta"

APPTYPE='app'

HOMEPAGE="http://forums.dropbox.com"


DESC="This is the 'testing' version from the forums."


echo "$HOMEPAGE
$DESC
"

exit 0



# https://dl-web.dropbox.com/u/17/Dropbox%202.3.16.dmg
