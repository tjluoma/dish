#!/bin/zsh -f

URL=$(curl -sL 'http://smilesoftware.com/PDFpenPro/download.html' | tr '"|\47' '\012' | egrep -i '\.zip$' | head -1 | sed 's#.*http#http#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: PDFpenPro


# http://cdn.smilesoftware.com/PDFpenPro_6.0.3.zip
