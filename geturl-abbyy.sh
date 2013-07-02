#!/bin/zsh -f

URL='http://fr7.abbyy.com/mac/fr/ABBYY_FineReader_Express_new.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="ABBYY FineReader Express"

APPTYPE='app'

HOMEPAGE="http://finereader.abbyy.com/finereader_for_mac/"

DESC="OCR app."

ALT_SLUG="abbyy"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://fr7.abbyy.com/mac/fr/ABBYY_FineReader_Express_new.dmg
