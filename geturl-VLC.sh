#!/bin/zsh -f

URL=$(curl -sL 'http://www.videolan.org/vlc/download-macosx.html' | tr '"|\47' '\012' | egrep '\.dmg$' | head -1 | sed 's#^#http:#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="VLC"

HOMEPAGE="'/Applications/ABBYY FineReader Express.app/'"

DESC="'Plays anything' video player"

echo "$HOMEPAGE
$DESC
"

exit 0


#RN: VLC


# http://get.videolan.org/vlc/2.0.7/macosx/vlc-2.0.7.dmg
