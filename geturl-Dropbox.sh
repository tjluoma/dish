#!/usr/bin/env zsh -f
# get the latest stable build of Dropbox
#
# From:	Timothy J. Luoma
# Mail:	luomat at gmail dot com
# Date:	2013-06-10

CURRENT_VERSION=$(curl -sL https://www.dropbox.com/install | tr -d '\012' | sed 's#.*version_str">##g ; s# .*##g' )

CURRENT_VERSION_SHORT=$(echo "$CURRENT_VERSION" | tr -cd '[0-9]')

URL="https://dl.dropboxusercontent.com/u/17/Dropbox%20${CURRENT_VERSION}.dmg"

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0

exit
#
#EOF





#RN: Dropbox


# https://dl.dropboxusercontent.com/u/17/Dropbox%202.2.3.dmg
