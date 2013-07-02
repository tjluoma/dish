dish - [d]ownload and [i]nstall via [sh]ell
====

## Overview

I want an easy way to download and install Mac OS X apps (or preference panes, or plugins like Java and Flash) from the command line.

Such a system will have two parts:

1. 	an easy way to get a download link for any particular app [part 1]

2.	a script which will automate (as much as possible) the process of downloading, un-archiving, and installing the app. [part 2]

Some other niceties:

* if the newest version of the app is already installed, don't both trying to install it again (but still make it possible to download the app if I want to, in case I just want to have the downloader available

* don't install a new version of 'App X' while 'App X' is currently running

## Part 1

I tried this once before and tried to write one script which could find a download link for any app if given an URL. Eventually that script became too large and unwieldy for me to maintain. Therefore, I have decided to write separate scripts for each app that I care about. This allows me to create individual scripts which are as efficient as possible and which won't break if I find a new app which needs to be parsed in a slightly different way.

## Download Link "Types"

1. Some apps have a static URL which redirects to the latest download. For example: <http://www.omnigroup.com/download/latest/omnifocus> currently redirects to  <http://downloads2.omnigroup.com/software/MacOSX/10.6/OmniFocus-1.10.4.dmg> but will point to different version if/when an update is released.

2. Other apps have a static 'direct download' URL which points to the download, such as <http://download.spotify.com/Spotify.dmg>.

3. Most often, apps have a "download page" which links you to the actual download, e.g. <http://smilesoftware.com/TextExpander/download.html>

4. Occasionally you will have to provide a particular 'refer' or user-agent in order to download them. For example, you can't download <https://www.macupdate.com/download/8544/MacUpdate-Desktop-5.2.2.dmg> using `curl` unless you pretend to be Safari, even if you don't pretend very well:

			curl --location --remote-name --user-agent "SAFARI" https://www.macupdate.com/download/8544/MacUpdate-Desktop-5.2.2.dmg

	This is made more complicated by the fact that *sometimes* you are *better off* telling the server that you are using `curl` because it won't make you jump through the same redirection 'hoops' that they would a regular GUI browser. ([HandBrake] is one example.)

	
5. Unfortunately, some developers won't let you apps their apps until you provide them with an email address. (I consider this to be a terrible and stupid idea, but nevertheless, it happens). Sometimes you can get around this by figuring out where the actual download page is and putting the other page in as a 'refer' page.

6. Last *and* least, some apps use an installer, meaning that you have to download an app which you then run in order to download the app. I find this both annoying and stupid. I have 2-3 computers behind a slow, metered satellite Internet connection. Using your installer means that I will have to download your app separately for each computer, and will make it harder to automate the process.

## Universal Download URLs

In my view of the perfect world (well, at least as far as downloading apps is concerned), if I know the URL of your website and the name of your app, I should be able to download it by using this URL: <http://YourCoName.tld/appname/download> (or, if the app has its own domain name: <http://YourAppName.tld/download>).

Failing that, I wish every developer would provide a download link which would always download the latest version of her/his app (see Type #1 or #2 above). I don't mean Type #3 (a download URL where I then have to click the link to make the download start), I mean an URL which will use standard HTTP redirects to take me to the actual download.

However, I realize that is unlikely to ever happen.

## "DISH" URLs

I realized that if there is no standard, then I should create one.

So I did.

Since dish.net and dish.com were (annoyingly) already in use, I created a sub-domain of my website [Luo.ma] called  [dish.luo.ma] (*quelle surprise*).

The purpose of that site will be to *direct* me to download URLs based on the name of the app. For example, if you want to download **VLC** you would go to <http://dish.luo.ma/vlc> and it would take you to the download URL.

## Rules for URLs ##

1. Always lowercase 
2. No spaces or punctuation (except as noted below)
3. Will redirect you to actual download (unless absolutely impossible)

## There Are a Few Provisos, a Couple of *Quid Pro Quos*. ##

#### "What about apps that are only available on the Mac App Store?" ####

Ideally `dish` is about being able to download and install apps from the shell, but sometimes that's just not possible.

For example, if someone wants to download [Xcode], well, I can't do that via the shell, but I can provide the link so they can get to the Mac App Store quickly and download the app, rather than having to launch the Mac App Store and then search for Xcode.

Therefore, `dish` URLs may be used to point to Mac App Store URLs 

[Xcode]: https://itunes.apple.com/app/xcode/id497799835?mt=12



#### "What if an App is Available on the Mac App Store *and* via Direct Download?" ####

In this case the /appname URL will *always* take you to the direct download version. If there is *also* Mac App Store version, you can use /*appname*-mas. 

Example:

* [dish.luo.ma/pdfpenpro](http://dish.luo.ma/pdfpenpro) 
* [dish.luo.ma/pdfpenpro-mas](http://dish.luo.ma/pdfpenpro-mas)

These might not work in every situation. If you find one that's missing, please let me know.

#### "Your download link doesn't work! You're an idiot! I hate you! You've ruined my life!"

Sorry. 

The good news is that you can still easily find the download page by going to <http://dish.luo.ma> and clicking on the name of the app in the left-hand column. That will take you to the official page for the app where you should be able to download it.

If you'd like to let me know that a link is broken, please let me know.

#### "Why don't you have {insert name of app here}?" ####

Probably because I don't use it myself. I don't intend to add every app ever made, but feel free to recommend something.

#### "How do I get in touch with you?

Sending an email to ***dish at luo dot ma*** would work.



<!-- References -->

[SuperDuper!]: http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html
[dish.luo.ma]: http://dish.luo.ma
[Luo.ma]: http://Luo.ma
[HandBrake]: http://handbrake.fr
