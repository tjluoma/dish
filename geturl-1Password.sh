#!/bin/zsh -f

URL=$(curl -sL 'http://agilebits.com/downloads/1Password/Mac' | tr '"' '\012' | egrep '^http.*zip' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="1Password"

APPTYPE='app'

HOMEPAGE="https://agilebits.com/onepassword/mac"

DESC="Password and other confidential information manager"

echo "$HOMEPAGE
$DESC
"

exit 0


# https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.21.zip
