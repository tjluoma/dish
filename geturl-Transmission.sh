#!/bin/zsh -f

URL=$(curl -sL "http://www.transmissionbt.com/download/"  | tr '"' '\012' | egrep -i '\.dmg$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Transmission"

HOMEPAGE="http://www.transmissionbt.com/download/"

DESC="Bittorrent client"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: Transmission


# http://download.transmissionbt.com/files/Transmission-2.80.dmg
