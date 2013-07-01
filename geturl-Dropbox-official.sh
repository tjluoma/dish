#!/bin/zsh -f

UA_SAFARI='Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_7; en-us) AppleWebKit/533.21.1 (KHTML, like Gecko) Version/5.0.5 Safari/533.21.1'

CURRENT_VERSION=$(curl -sL -A "$UA_SAFARI" https://www.dropbox.com/install | tr -d '\012' | sed 's#.*version_str">##g ; s# .*##g' )

[[ "$CURRENT_VERSION" == "" ]] && exit 1

URL="https://dl.dropboxusercontent.com/u/17/Dropbox%20${CURRENT_VERSION}.dmg"

# This is what we want
TYPE_WANTED='application/x-apple-diskimage'

# this is what we got
TYPE_GIVEN=$(curl -s --head "$URL" | tr -d '\r' | awk -F' ' '/Content-Type/{print $NF}' | tail -1)

# if what we want = what we got, then we're good to go
if [ "$TYPE_GIVEN" = "$TYPE_WANTED" ]
then

	echo "$URL"

	exit 0

else

# if we get here the TYPEs did not match up

	exit 1
fi


[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0



#RN: Dropbox-official


# https://dl.dropboxusercontent.com/u/17/Dropbox%202.2.3.dmg
