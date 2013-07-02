#!/bin/zsh -f

URL=$(curl -sL 'http://rogueamoeba.com/fission/download.php' | tr '"|\47' '\012' | egrep -i '\.zip$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Fission"

APPTYPE='app'

HOMEPAGE="http://rogueamoeba.com/fission/"

DESC="Audio editor"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: Fission


# http://rogueamoeba.com/fission/download/Fission.zip
