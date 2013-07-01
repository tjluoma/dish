#!/bin/zsh -f

URL=$(curl -sL --head  http://updates.expandrive.com/apps/expandrive/download_latest | awk -F' ' '/^Location.*zip/{print $2}'| tr -d '\r')

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: ExpanDrive


# http://downloads.expandrive.com/expandrive/v3-0-3025_published_2013-06-20_at_14_30_41/ExpanDrive.zip
