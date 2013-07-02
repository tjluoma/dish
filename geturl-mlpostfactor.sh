#!/bin/zsh -f

URL='http://code-lyoko-cl.toile-libre.org/Hack_ML/MLPostFactorV0.3.zip'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="MLPostFactor"

HOMEPAGE="http://osxhackers.com"

DESC="Install Mountain Lion on unsupported hardware"

echo "$HOMEPAGE
$DESC
"

exit 0


# http://code-lyoko-cl.toile-libre.org/Hack_ML/MLPostFactorV0.3.zip
