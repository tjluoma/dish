#!/bin/zsh -f

URL='http://www.omnigroup.com/download/latest/omnifocus'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

HOMEPAGE='http://www.omnigroup.com/products/omnifocus/'

DESC='GTD-inspired task management'

echo "$HOMEPAGE
$DESC
"




# http://www.omnigroup.com/download/latest/omnifocus
