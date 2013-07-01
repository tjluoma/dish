#!/bin/zsh -f

URL=$(curl -sL 'http://www.keyboardmaestro.com/' | tr '"' '\012' |  fgrep '/action/download' | tail -1 | sed 's#^#http://www.keyboardmaestro.com#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Keyboard-Maestro


# http://www.keyboardmaestro.com/action/download?km-kmi-2-f
