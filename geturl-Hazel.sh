#!/bin/zsh -f

URL='http://www.noodlesoft.com/Products/Hazel/download'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Hazel"

APPTYPE='preference'

HOMEPAGE="http://noodlesoft.com/hazel"

DESC="like Folder Actions, but way better"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://www.noodlesoft.com/Products/Hazel/download
