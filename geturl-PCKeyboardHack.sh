#!/bin/zsh -f

URL=$(curl -sL 'https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en' | tr '"|\47' '\012' | egrep '\.dmg$' | head -1 | sed 's#^#https://pqrs.org/macosx/keyremap4macbook/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="PCKeyboardHack"

APPTYPE='app'

HOMEPAGE="https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en"

ALT_SLUG="kbdhack"

DESC="Remap your Mac keyboard. See also KeyRemap4MacBook"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: PCKeyboardHack


# https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-9.0.0.dmg
