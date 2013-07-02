#!/bin/zsh -f

URL=$(curl -sL "http://www.accordancebible.com/downloads/program_installers.php" | tr '"' '\012' | egrep 'http.*\.dmg' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Accordance"

APPTYPE='app'

HOMEPAGE="http://www.accordancebible.com/Accordance-Installers/"

DESC="Bible study software"

echo "$HOMEPAGE
$DESC
"


exit 0


# http://www.accordancefiles1.com/products/Accordance_10.1.7.dmg
