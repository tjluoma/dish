#!/bin/zsh -f

URL=$(curl -sL 'http://www.iterm2.com/#/section/downloads' | tr '"|\47' '\012' | egrep '\.zip$' |fgrep beta | head -1 | sed 's#^#http://www.iterm2.com#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="iTerm Beta"

HOMEPAGE="www.iterm2.com/"

DESC="beta version of the Terminal replacement"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: iTerm-beta


# http://www.iterm2.com/downloads/beta/iTerm2-1_0_0_20130624.zip
