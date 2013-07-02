#!/bin/zsh -f

URL=$(curl -sL 'http://www.iterm2.com/#/section/downloads' | tr '"|\47' '\012' | egrep '\.zip$' |fgrep stable | head -1 | sed 's#^#http://www.iterm2.com#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="iTerm"

HOMEPAGE="www.iterm2.com/"

DESC="Terminal replacement"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: iTerm


# http://www.iterm2.com/downloads/stable/iTerm2_v1_0_0.zip
