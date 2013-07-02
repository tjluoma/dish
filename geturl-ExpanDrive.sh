#!/bin/zsh -f

URL=$(curl -sL --head  http://updates.expandrive.com/apps/expandrive/download_latest | awk -F' ' '/^Location.*zip/{print $2}'| tr -d '\r')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="ExpanDrive"

APPTYPE='app'

HOMEPAGE="http://www.expandrive.com/expandrive"

DESC="mount servers as local volumes"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://downloads.expandrive.com/expandrive/v3-0-3025_published_2013-06-20_at_14_30_41/ExpanDrive.zip
