#!/bin/zsh -f

URL=$(curl -sL "http://www.hogbaysoftware.com/products/taskpaper"  | tr '"' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="TaskPaper"

HOMEPAGE="http://www.hogbaysoftware.com/products/taskpaper"

DESC="plain text to-do app"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: TaskPaper


# http://taskpaper.s3.amazonaws.com/TaskPaper.dmg
