#!/bin/zsh -f

URL='https://dl-ssl.google.com/chrome/mac/stable/CHFA/googlechrome.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"

	# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Google Chrome"

HOMEPAGE="http://google.com/chrome"

DESC="web browser from Google"

echo "$HOMEPAGE
$DESC
"



exit 0
#redirect 302 /chrome
#redirect 302 /googlechrome 		https://dl-ssl.google.com/chrome/mac/stable/CHFA/googlechrome.dmg

# https://dl-ssl.google.com/chrome/mac/stable/CHFA/googlechrome.dmg
