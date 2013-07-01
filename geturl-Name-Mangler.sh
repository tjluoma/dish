#!/bin/zsh -f

# URL=$(curl -sL --head http://manytricks.com/download/namemangler | awk -F' ' '/^Location.*dmg/{print $2}'| tr -d '\r')

URL='http://manytricks.com/download/namemangler'

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Name-Mangler


# http://manytricks.com/download/namemangler
