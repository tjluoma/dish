#!/bin/zsh -f

URL=$(curl -sL 'http://www.keyboardmaestro.com/' | tr '"' '\012' |  fgrep '/action/download' | tail -1 | sed 's#^#http://www.keyboardmaestro.com#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Keyboard Maestro"

APPTYPE='app'

HOMEPAGE="http://KeyboardMaestro.com"

DESC="superb macro app"

echo "$HOMEPAGE
$DESC
"

exit 0


#RN: Keyboard-Maestro


# http://www.keyboardmaestro.com/action/download?km-kmi-2-f
