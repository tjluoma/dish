#!/bin/zsh -f

URL=$(curl -s 'http://handbrake.fr/downloads.php' | egrep '.dmg.*64bit' | sed 's#.*rotation.php#http://handbrake.fr/rotation.php#g ; s#.dmg.*#.dmg#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: HandBrake


# http://handbrake.fr/rotation.php?file=HandBrake-0.9.9-MacOSX.6_GUI_x86_64.dmg
