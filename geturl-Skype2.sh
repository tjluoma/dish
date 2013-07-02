#!/bin/zsh -f

URL='http://download.skype.com/macosx/Skype_2.8.0.866.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Skype 2"

APPTYPE='app'

HOMEPAGE="http://www.skype.com/en/download-skype/"

DESC="Old version of Skype app"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://download.skype.com/macosx/Skype_2.8.0.866.dmg
