#!/bin/zsh -f

URL=$(curl -sL 'http://www.irradiatedsoftware.com/updates/profiles/sizeup.php' | tr '"|\47' '\012' | egrep -i '\.zip$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="SizeUp"

APPTYPE='app'

HOMEPAGE="http://www.irradiatedsoftware.com/sizeup"

DESC="Resize windows via keyboard"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: SizeUp


# http://www.irradiatedsoftware.com/downloads/SizeUp_1.5.zip
