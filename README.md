# Raspberry Pi setup

*(initial draft)*

Setting up a Raspberry Pi 2 computer isn't as trivial a task as the world would have you believe.  Nevertheless it's not difficult, just time-consuming and occasionally frustrating.  It depends what you wish to **do.**  As someone with limited Linux knowledge it's an interesting challenge for me.

## What?

My Pi will be used to copy my blog repo from GitHub on a regular basis, build it locally, then FTP the site files to my web host.

## Why?

Good question.  Because I paid for the web host I may as well use the space for something other than the obsolete Wiki there now.  And because I can and wish to.  Everyone needs a hobby!

## How?

In general terms I intend to create an as-yet-to-be-determined number of shell scripts driven by cron jobs, which:

* Use the `git` command line to pull the blog repo from GitHub,

* Use the `Jekyll` static web site generator to build it locally,

* Use the `FileZilla` FTP program - or at least something on the command line again - to upload the entire site (for now) to my web host, over-writing what's there.

## What?

I've needed to install:

* `RVM` - a Ruby version manager - to get the stuff that Ruby needs working correctly.  RVM installs on a per-user basis, though there may indeed by system-wide options (see below for an important caveat),

* `Rubygems` - to allow Ruby gems to run,

* `Jekyll`, with its dependencies.  The main point of failure throughout this and my previous Everest - `ayadn_shell` - has been Ruby and gem dependencies.  I had a heck of a job trying to get this to work (see below),

* `FileZilla` - a free and feature-packed FTP client with GUI and command line options.

**Important:**  Along the way (and maybe too late!) I discovered the need to run my Terminal window as login shell - using `/bin/bash --login`.  Typing this at the command line before switching Rubies does the trick where it would otherwise fail, but I need to figure out how to set the thing so that future Terminal windows open with those rights *automatically.*

## Incidental:

* I was *going* to install the `Glynn` Ruby gem - which, when run, automatically uploads the contents of the folder it's invoked within to a predetermined location at a remote FTP host.  I didn't use it because in its simplest use case it requires a yaml configuration file within the repo, and I'd still like my blog repo to remain public.

* I don't *yet* wish to pay GitHub for private repos.  I opened a GitLab account and like what I see, especially the free private repos.  There's just not the social dimension to that site (nearly all the people I know who use gituse GitHub) and GitHub has of course gained far better brand awareness.

## Next steps:

~~Install `git`.  It may seem odd that I've not already done it by this point.  Well, this is the fifth iteration of my Raspberry Pi setup; I've done it 4 times already.  Slow & sure will win *this* race to the next reset.~~

It turns out git's already installed!  Woohoo!

## Real next steps:

I've creaded a 'repo' folder in the root of my user folder.  The site lives in there in a folder about to be created by git (if I read the instructions correctly.)

Here's an approximatin of the commands I used to build a site locally then send it to my web host.  It's all mirrors and black thread right now:

Open a Terminal window,

`cd repo` - changes the working folder to 'repo' ready for action!

`git clone git://github.com/bazbt3/bazbt3.github.io.git`- makes a local copy of the remote repo mentioned,

`cd bazbt3.github.io` - changes the working folder gain, this time ready for the site to be built,

`/bin/bash --login` - creates an environment in which Jekyll will just work,

`jekyll serve` - builds a copy of the site into a new '_site' folder, then serves it,

I *meant* to check that the file built locally - I could have used `jekyll build` instead - but didn't bother.  Yeah, it bit me quickly.

`ctrl-c` - stops the local Jekyll server.

At that point I opened FileZilla and FTP-ed the resulting new '_site' folder's contents to my web host, updating everything in the remote folder,

Unfortunately the 'No' post failed to build with a title; so I got my phone out, changed its title in the yaml front matter, and pushed the updated page to GitHub and...

`git pull git://github.com/bazbt3/bazbt3.github.io.git` - to pull down the now up-to-date remote repo contents and merge them with the local stuff,

`jekyll serve` - serves the site again,

This time I checked the local site:

`http://localhost:4000/archive/` - opened in a browser shows the site in all its glory,

Success, the errant 'No' post has indeed changed to 'Nope'!

Open FileZilla, FTP the '_site' folder's contents to my web host again.  This overwrite option is almost certainly inefficient, through the site's not exactly a bandwidth hog!

Here's the result:

**[http://git.bt3.com/](http://git.bt3.com/)**

Tadaa!
