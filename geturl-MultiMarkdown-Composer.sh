#!/bin/zsh -f

	# get the d.pr link from the download page, and append a + to it
URL=$(curl -sL "http://multimarkdown.com/download/" | tr '"' '\012' | egrep '^http://d.pr/' | head -1 | sed 's#$#+#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="MultiMarkdown Composer"

APPTYPE='app'

HOMEPAGE="http://multimarkdown.com/download/"

DESC="MultiMarkdown enabled editor."

ALT_SLUG="mmdc"

echo "$HOMEPAGE
$DESC
"




exit 0



#RN: MultiMarkdown-Composer


# http://d.pr/f/AoLH+
