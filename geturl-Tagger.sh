#!/bin/zsh -f

URL=$(curl -sL "http://bilalh.github.io/projects/tagger/"  | tr '"' '\012' | egrep -i '\.(dmg|zip)$' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Tagger"

HOMEPAGE="http://bilalh.github.io/projects/tagger/"

DESC="auto tags audio files. It also supports batch tag editing"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: Tagger


# https://github.com/downloads/Bilalh/Tagger/Tagger_1.6.2.zip
