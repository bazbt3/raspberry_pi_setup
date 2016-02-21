#!/usr/bin/env bash
# The above 'shebang' is important, it allows the code to run.
# In the past I've used `#!/bin/bash` but I've been reading since.

# 
# THIS FILE HAS NOT BEEN TESTED LOCALLY, IT'S A PLACEHOLDER!
# It's important to note that the file permissions should also be changed to allow execution.
# It's worked for me in the past, but I'll need a brief refresher before *doing* it.
# 

# Prerequisites:
# Mentioned in this repo's README.md file.

cd ~/repo/bazbt3.github.io
# Changes the working folder as required, ready for action!
# It'll probably be better to change this to one with my account name, needs a check.

git pull git://github.com/bazbt3/bazbt3.github.io.git
# To pull down the up-to-date remote repo contents and merge them with the local stuff.
# It presupposed that the repo exists locally - something I will ensure before making this live.

# At this point I need to invoke `/bin/bash --login` to run the script; something I'm hoping the shebang will accomplish later.

jekyll build
# Builds a copy of the site in the '_site' folder.  If it doesn't exist, Jekyll will create it.

# This is the end.  The next step - invoked by a cron job - is ftp-ing the site to my web host.
