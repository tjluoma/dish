#!/bin/zsh -f

URL=$(curl -sL 'http://smilesoftware.com/TextExpander/download.html' | tr '=|"' '\012' | egrep '^http.*zip' | head -1)

if [ "$URL" = "" ]
then
		exit 1
fi

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="TextExpander"



APPTYPE='app'



HOMEPAGE="http://smilesoftware.com/TextExpander/download.html"

DESC="indispensable text snippet expander"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: TextExpander


# http://cdn.smilesoftware.com/TextExpander_4.0.5.zip
