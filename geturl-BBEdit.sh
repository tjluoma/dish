#!/bin/zsh -f

URL=$(curl -sL 'http://versioncheck.barebones.com/BBEdit.xml' | fgrep .zip | tail -1f | sed 's#.*<string>##g; s#</string>##g')

if [ "$URL" = "" ]
then
		exit 1
fi

echo "$URL"

exit 0


#RN: BBEdit


# https://s3.amazonaws.com/BBSW-download/BBEdit_10.5.4.zip
