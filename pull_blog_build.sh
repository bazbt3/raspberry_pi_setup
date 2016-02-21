#!/usr/bin/env bash
# The above is important, allows the code to run.
# In the past I've used `#!/bin/bash` but I've been reading since.

# 
# THIS FILE HAS NOT BEEN TESTED LOCALLY, IT'S A PLACEHOLDER!
# It's important to note that the file permissions should also be changed to allow execution.
# It's worked for me in the past, but I'll need a brief refresher before *doing* it.
# 

# Prerequisites:
# Mentioned in this repo's README.md file.

cd ~\repo
# Changes the working folder to 'repo' ready for action!

git pull git://github.com/bazbt3/bazbt3.github.io.git
# To pull down the up-to-date remote repo contents and merge them with the local stuff.
# It presupposed that the repo exists locally - something I will ensure before making this live.

cd bazbt3.github.io
# Changes the working folder to 'bazbt3.github.io', ready for the site to be built.

jekyll build
# Builds a copy of the site in the '_site' folder.

# This is the end.  The next step - invoked by a cron job - is ftp-ing the site to my web host.
