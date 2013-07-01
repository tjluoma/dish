#!/bin/zsh -f

URL=$(curl -sL 'http://fluidapp.com' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1 | sed 's#^#http://fluidapp.com#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Fluid


# http://fluidapp.com/dist/Fluid_1.7.1.zip
