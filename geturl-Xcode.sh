#!/bin/zsh -f

URL='https://itunes.apple.com/app/xcode/id497799835?mt=12'

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Xcode"

APPTYPE="app"

ALT_SLUG="xcode-mas"

HOMEPAGE="https://itunes.apple.com/app/xcode/id497799835?mt=12"

DESC="Developer tools [MAS]"

echo "$HOMEPAGE
$DESC
"

exit 0
