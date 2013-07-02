#!/bin/zsh -f

# I don't think this is being developed anymore so it's unlikely that the URL will change
#URL=$(curl -sL 'http://orange-carb.org/SBM/downloads.html' | tr '"|\47' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

URL='http://quux.orange-carb.org/dist/SlimBatteryMonitor-1.5.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="SlimBatteryMonitor"

ALT_SLUG="sbm"

APPTYPE='app'

HOMEPAGE="http://orange-carb.org/SBM/"

DESC="better battery monitor for Mac laptops"

echo "$HOMEPAGE
$DESC
"

exit 0


#RN: SlimBatteryMonitor


# http://quux.orange-carb.org/dist/SlimBatteryMonitor-1.5.dmg
