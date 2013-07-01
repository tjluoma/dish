#!/bin/zsh -f

URL='http://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

HOMEPAGE="http://www.fatcatsoftware.com/iplm/"

DESC="Manage multiple iPhoto libraries"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip
