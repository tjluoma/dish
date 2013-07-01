#!/bin/zsh -f

URL=$(curl -sL "http://thelittleappfactory.com/tagalicious/download.php" | tr '"|=' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Tagalicious"

HOMEPAGE="http://thelittleappfactory.com/tagalicious/"

DESC="find metadata for iTunes music"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: Tagalicious


# http://files.thelittleappfactory.com/tagalicious/Tagalicious.zip
