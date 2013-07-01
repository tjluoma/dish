#!/bin/zsh -f

URL=$(curl -sL "http://www.accordancebible.com/downloads/program_installers.php" | tr '"' '\012' | egrep 'http.*\.dmg' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Accordance


# http://www.accordancefiles1.com/products/Accordance_10.1.7.dmg
