#!/bin/zsh -f

URL=$(curl -sL "http://www.caseapps.com/tags/"  | tr '"' '\012' | egrep -i '\.(dmg|zip)$' | head -1 | sed 's#\.\./#http://www.caseapps.com/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Tags"

APPTYPE='app'

HOMEPAGE="http://www.caseapps.com/tags/"

DESC="OpenMeta-compatible, GUI tagging app"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: Tags


# http://www.caseapps.com/downloads/Tags2.dmg
