#!/bin/zsh -f

URL=$(curl -sL 'https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en' | tr '"|\47' '\012' | egrep '\.dmg$' | head -1 | sed 's#^#https://pqrs.org/macosx/keyremap4macbook/#g')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: PCKeyboardHack


# https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-9.0.0.dmg
