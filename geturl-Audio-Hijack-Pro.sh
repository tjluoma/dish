#!/bin/zsh -f

URL=$(curl -sL 'http://www.rogueamoeba.com/audiohijackpro/download.php' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Audio-Hijack-Pro


# http://rogueamoeba.com/audiohijackpro/download/AudioHijackPro.zip
