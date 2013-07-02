#!/bin/zsh -f

URL=$(curl -sL 'http://iconfactory.com/software/xscope' | tr '"' '\012' | egrep '\.zip$' | head -1 | sed 's#^#http://iconfactory.com#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="xScope"

HOMEPAGE='http://iconfactory.com/software/xscope'

DESC="Measure and examine UI elements on your Mac's screen"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: xScope


# http://iconfactory.com/assets/software/xscope/xScope-3.6.zip
