# Raspberry Pi setup documentation

## Prerequisites:

I'm pretty sure a computer running any Linux variant (including Mac OS X) will be capable of running this.  It is, after all, pretty basic.

I've needed to install:

* `RVM` - a Ruby version manager - to get the stuff that Ruby needs working correctly.  RVM installs on a per-user basis, though there may indeed by system-wide options (see below for an important caveat.)  'rbenv' is an alternative - one which I and others have had success with where RVM has failed.

* `Rubygems` - to allow Ruby gems to run,

* `Jekyll`, with its dependencies.  The main point of failure throughout this and my previous Everest - `ayadn_shell` - has been Ruby and gem dependencies.  I had a heck of a job trying to get this to work (see below),

* [`NcFTP Client`](http://www.ncftp.com/) - a free and feature-packed command line FTP client.  This replaces 'FileZilla' (an *excellent* GUI *and* command-line client) in my workflow.

**Important:**    
Along the way (and maybe too late!) I discovered the need to run my Terminal window as login shell - using `/bin/bash --login`.  Typing this at the command line before switching Rubies does the trick where it would otherwise fail, but I need to figure out how to set the thing so that future Terminal windows open with those rights *automatically.*    
The good thing is, when SSH-ing into the Pi, the shell script commands mentioned later just work.

## Incidental:

* I was *going* to install the `Glynn` Ruby gem - which, when run, automatically uploads the contents of the folder it's invoked within to a predetermined location at a remote FTP host.  I didn't use it because in its simplest use case it requires a yaml configuration file within the repo, and I'd still like my blog repo to remain public.  **Addendum:** I chose to create a script using plain text username & password anyway, chose to remove the sensitive info. in the file within this repo.

* I don't *yet* wish to pay GitHub for private repos.  I opened a GitLab account and like what I see, especially the free private repos.  There's just not the social dimension to that site (nearly all the people I know who use git use GitHub) and GitHub has of course gained far better brand awareness.

---

## Next steps:

~~Install `git`.  It may seem odd that I've not already done it by this point.  Well, this is the fifth iteration of my Raspberry Pi setup; I've done it 4 times already.  Slow & sure will win *this* race to the next reset.~~

It turns out git's already installed!  Woohoo!

---

## Real next steps:

I've creaded a 'repo' folder in the root of my user folder.  The site lives in there in a folder about to be created by git (if I read the instructions correctly.)

[See the creation of the commands](20-commands.md) next...
