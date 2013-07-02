#!/bin/zsh -f

URL=$(curl -sL 'http://smilesoftware.com/PDFpenPro/download.html' | tr '"|\47' '\012' | egrep -i '\.zip$' | head -1 | sed 's#.*http#http#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="PDFpenPro"

APPTYPE='app'

HOMEPAGE="http://smilesoftware.com/PDFpenPro/"

DESC="PDF power tool"

echo "$HOMEPAGE
$DESC
"

exit 0


# http://cdn.smilesoftware.com/PDFpenPro_6.0.3.zip
