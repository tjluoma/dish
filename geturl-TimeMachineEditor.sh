#!/bin/zsh -f

URL=$(curl -sL 'http://timesoftware.free.fr/timemachineeditor/' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="TimeMachineEditor"

HOMEPAGE="http://timesoftware.free.fr/timemachineeditor/"

DESC="edit how often Time Machine backs up"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: TimeMachineEditor


# http://timesoftware.free.fr/timemachineeditor/TimeMachineEditor.zip
