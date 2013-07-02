#!/bin/zsh -f

URL=$(curl -sL 'http://get.adobe.com/flashplayer/download/?installer=Flash_Player_11_for_Mac_OS_X_10.6_-_10.9&os=OSX&browser_type=KHTML&browser_dist=Safari&d=Adobe_Photoshop_Lightroom&dualoffer=false' | tr '"' '\012' | egrep '^http.*\.dmg')

[[ "$URL" == "" ]] && exit 1

echo "$URL"


# Unless VERBOSE is 'yes' quit now
[[ "$VERBOSE" != "yes" ]] && exit 0

APPNAME="Flash Player"

APPTYPE='preference'

HOMEPAGE="http://get.adobe.com/flashplayer"

DESC="Ubiquitous, Perpetually Buggy browser plugin that refuses to die."

ALT_SLUG="flash"

echo "$HOMEPAGE
$DESC
"



exit 0


#RN: Flash


# http://aihdownload.adobe.com/bin/live/AdobeFlashPlayerInstaller_11_ltrosxd_aaa_aih.dmg
