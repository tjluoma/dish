#!/bin/zsh -f

# URL=$(curl -sL 'http://www.skype.com/en/download-skype/skype-for-mac/downloading/' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

URL='http://www.skype.com/go/getskype-macosx.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Skype"

APPTYPE='app'

HOMEPAGE="http://www.skype.com/en/download-skype/skype-for-mac/downloading/"

DESC="Phone calls via computer"

echo "$HOMEPAGE
$DESC
"



exit 0




#RN: Skype


# http://www.skype.com/go/getskype-macosx.dmg
