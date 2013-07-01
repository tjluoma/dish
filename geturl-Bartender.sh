#!/bin/zsh -f

URL=$(curl -sL 'http://macbartender.com' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1 | sed 's#^#http://macbartender.com/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Bartender


# http://macbartender.com/Demo/Bartender.zip
