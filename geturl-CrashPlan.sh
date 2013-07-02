#!/bin/zsh -f


# WOW, this is ugly.
# OK, so they don't seem to have direct download links from their site. The links are created via JavaScript
# So, what we do is: we load the download page, and we look for a javascript file (.js suffix) with the word 'download' in it
# We get rid of the cruft around the path, and add the domain (http://www.crashplan.com) to it. That gives us an URL to the JavaScript file, which we put into a variable JS_URL.
#
# Then we look in that JS_URL for the word 'VERSION=' and take whatever comes after it (getting rid of more cruft)
# which should give us something like '3.5.3'
#
# The actual download URL will be something like
# http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.5.3_Mac.dmg'
# So we take that version number and stick it into the appropriate place in the URL we think they will use

URL=$(JS_URL=`curl -sL http://www.crashplan.com/consumer/download.html | egrep '\<script\>.*download.*\.js' | sed 's#.*src="##g ; s#">.*##g ; s#^#http://www.crashplan.com#g'` ; VERSION=`curl -sL "$JS_URL" | tr ';' '\012' | fgrep VERSION= | head -1 | sed 's#.*="##g ; s#"##g'` ; echo "http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_${VERSION}_Mac.dmg")


# now we check to see if that mess got us anything
[[ "$URL" == "" ]] && exit 1

echo "$URL"

# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="CrashPlan"

APPTYPE='app'

HOMEPAGE="http://www.crashplan.com/consumer/download.html"

DESC="Backup, online and local"

echo "$HOMEPAGE
$DESC
"

exit 0

# http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.5.3_Mac.dmg
