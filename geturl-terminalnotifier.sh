#!/bin/zsh -f

# URL=$(curl -sL "https://github.com/alloy/terminal-notifier/downloads"  | tr '"' '\012' | egrep -i '\.(dmg|zip)$' | head -1 | sed 's#^#https://github.com#g')

URL='https://github.com/downloads/alloy/terminal-notifier/terminal-notifier_1.4.2.zip'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

HOMEPAGE='https://github.com/alloy/terminal-notifier'

DESC='send message to Notification Center from command line'

echo "$HOMEPAGE
$DESC
"


#RN: terminal-notifier

# https://github.com/downloads/alloy/terminal-notifier/terminal-notifier_1.4.2.zip
