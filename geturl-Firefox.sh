#!/bin/zsh -f

	# WATCH THE &amp; and & in the sed command! They have to be \escaped
URL=$(curl -sL 'http://www.mozilla.org/en-US/firefox/all/' | fgrep -i "os=osx&amp;lang=en-US" | sed 's#.*http#http#g ; s#".*##g; s#\&amp;#\&#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Firefox"

APPTYPE='app'

HOMEPAGE="http://www.mozilla.org/en-US/firefox/all/"

DESC="web browser"

echo "$HOMEPAGE
$DESC
"

exit 0


# http://download.mozilla.org/?product=firefox-22.0&os=osx&lang=en-US
