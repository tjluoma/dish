#!/bin/zsh -f

	# get the d.pr link from the download page, and append a + to it
URL=$(curl -sL "http://multimarkdown.com/download/" | tr '"' '\012' | egrep '^http://d.pr/' | head -1 | sed 's#$#+#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0



#RN: MultiMarkdown-Composer


# http://d.pr/f/AoLH+
