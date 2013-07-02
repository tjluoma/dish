#!/bin/zsh -f

URL='http://www.omnigroup.com/download/latest/omnidisksweeper'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="OmniDiskSweeper"

ALT_SLUG="ods"

HOMEPAGE="http://www.omnigroup.com/products/omnidisksweeper/"

DESC="What's using your disk space?"

echo "$HOMEPAGE
$DESC
"


# http://www.omnigroup.com/download/latest/omnidisksweeper
