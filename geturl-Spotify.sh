#!/bin/zsh -f

# NOTE: The next line just gets you an installer, not the actual DMG (which is about 32 MB)
# curl -sL 'https://www.spotify.com/us/download/mac/' | tr '"|=|\047' '\012' | egrep -i '\.(dmg|zip)' | head -1 | tr -d '\\'

URL='http://download.spotify.com/Spotify.dmg'

[[ "$URL" == "" ]] && exit 1

echo "$URL"

exit 0


#RN: Spotify


# http://download.spotify.com/Spotify.dmg
