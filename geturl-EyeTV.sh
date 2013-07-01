#!/bin/zsh -f

URL=$(curl -sL "http://www.elgato.com/eyetv/eyetv-3/support/update" | tr '"' '\012' | egrep '^http.*dmg' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: EyeTV


# http://edgedownloads.elgato.com/eyetvdownloads/support/eyetv_361_7120.dmg
