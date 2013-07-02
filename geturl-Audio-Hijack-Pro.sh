#!/bin/zsh -f

URL=$(curl -sL 'http://www.rogueamoeba.com/audiohijackpro/download.php' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Audio Hijack Pro"

APPTYPE='app'

HOMEPAGE="http://www.rogueamoeba.com/audiohijackpro/"

ALT_SLUG="ahp"

DESC="Capture audio from any app"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://rogueamoeba.com/audiohijackpro/download/AudioHijackPro.zip
