#!/bin/zsh -f

URL=$(curl -sL 'http://rogueamoeba.com/fission/download.php' | tr '"|\47' '\012' | egrep -i '\.zip$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Fission


# http://rogueamoeba.com/fission/download/Fission.zip
