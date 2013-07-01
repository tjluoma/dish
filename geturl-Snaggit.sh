#!/bin/zsh -f

URL=$(curl -sL 'http://www.techsmith.com/download/snagit/mac/thankyou.asp' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Snaggit


# http://download.techsmith.com/snagitmac/enu/Snagit.dmg
