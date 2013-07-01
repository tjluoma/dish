#!/bin/zsh -f

URL=$(curl -sL 'http://mailsmith.org' | tr '"|\47' '\012' | egrep -i '\.dmg$' | head -1 | sed 's#^#http://mailsmith.org#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0
