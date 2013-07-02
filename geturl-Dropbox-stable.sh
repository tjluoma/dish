#!/usr/bin/env zsh -f
# get the latest stable build of Dropbox
#
# From:	Timothy J. Luoma
# Mail:	luomat at gmail dot com
# Date:	2013-06-10

RSS_URL='https://www.dropbox.com/release_notes/rss.xml'

POST_URL=$(curl -sL "$RSS_URL" | fgrep -A1 'New Stable Build' | head -2 | tail -1 | sed 's#</link>##g ; s#.*<link>##g;')

URL=$(curl -sL "${POST_URL}" | awk -F'"' '/http.*dmg/{print $2}')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Dropbox Stable"

APPTYPE='app'

HOMEPAGE="http://forums.dropbox.com"

DESC="This is the 'stable' version from the forums."

echo "$HOMEPAGE
$DESC
"



exit 0
#
#EOF





#RN: Dropbox-stable


# https://dl-web.dropbox.com/u/17/Dropbox%202.2.8.dmg
