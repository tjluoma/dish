#!/bin/zsh -f

URL=$(curl -sL 'http://www.red-sweater.com/fastscripts/' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1 | sed 's#^#http://www.red-sweater.com/fastscripts/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: FastScripts


# http://www.red-sweater.com/fastscripts/FastScripts2.6.5.zip
