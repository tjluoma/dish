#!/bin/zsh -f

URL=$(curl -sL 'http://www.techsmith.com/download/snagit/mac/thankyou.asp' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Snagit"

APPTYPE='app'

HOMEPAGE="http://techsmith.com/snagitmac/"

DESC="screen/image capture"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: Snaggit


# http://download.techsmith.com/snagitmac/enu/Snagit.dmg
