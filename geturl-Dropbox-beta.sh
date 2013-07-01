#!/usr/bin/env zsh -f
# get the latest stable build of Dropbox
#
# From:	Timothy J. Luoma
# Mail:	luomat at gmail dot com
# Date:	2013-06-10

RSS_URL='https://www.dropbox.com/release_notes/rss.xml'

POST_URL=$(curl -sL "$RSS_URL" | fgrep -A1 'New Testing Build' | head -2 | tail -1 | sed 's#</link>##g ; s#.*<link>##g;')

URL=$(curl -sL "${POST_URL}" | awk -F'"' '/http.*dmg/{print $2}')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0

#
#EOF





#RN: Dropbox-beta


# https://dl-web.dropbox.com/u/17/Dropbox%202.3.16.dmg
