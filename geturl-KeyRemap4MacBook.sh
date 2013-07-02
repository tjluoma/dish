#!/bin/zsh -f

URL=$(curl -sL "http://pqrs.org/macosx/keyremap4macbook" |fgrep .dmg |head -1 |sed 's#.dmg">.*#.dmg#g ; s#.*href="/#http://pqrs.org/#g'|sed 's#.*"##g ; s#^#http://pqrs.org/macosx/keyremap4macbook/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="KeyRemap4MacBook"

APPTYPE='app'

HOMEPAGE="https://pqrs.org/macosx/keyremap4macbook/"

DESC="remap keys on your Mac keyboard. Not just MacBooks."

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: KeyRemap4MacBook


# http://pqrs.org/macosx/keyremap4macbook/files/KeyRemap4MacBook-8.3.0.dmg
