#!/bin/zsh -f

URL=$(curl -sL 'http://agilebits.com/downloads/1Password/Mac' | tr '"' '\012' | egrep '^http.*zip' | head -1)

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: 1Password


# https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.21.zip
