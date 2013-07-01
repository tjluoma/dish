#!/bin/zsh -f

#  http://www.java.com/inc/BrowserRedirect1.jsp?locale=en

URL='http://javadl.sun.com/webapps/download/AutoDL?BundleId=78698'

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

HOMEPAGE="http://www.java.com/inc/BrowserRedirect1.jsp?locale=en"

DESC="Java installer for OS X"

echo "$HOMEPAGE
$DESC
"



exit 0

# http://javadl.sun.com/webapps/download/AutoDL?BundleId=78698
