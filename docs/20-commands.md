# Raspberry Pi setup documentation

## Commands:

**The commands I used to start all this off** - more stream-of-consciousness than structured.  For the most recent see the in-file comments.

---

I've creaded a 'repo' folder in the root of my user folder.  The site lives in there in a folder about to be created by git (if I read the instructions correctly.)

Here's an approximation of the commands I used to build a site locally then send it to my web host - in the order I ran them, and with the errors I came across.  It's all mirrors and black thread right now; don't expect this to work if you try this at *your* home:

Open a Terminal window,

`cd repo`    
\# Changes the working folder to 'repo' ready for action!

`git clone git://github.com/bazbt3/bazbt3.github.io.git`    
\# Makes a local copy of the remote repo mentioned,

`cd bazbt3.github.io`    
\# Changes the working folder gain, this time ready for the site to be built,

`/bin/bash --login`    
\# Creates an environment in which Jekyll will just work,

`jekyll serve`    
\# Builds a copy of the site into a new '_site' folder, then serves it,

I *meant* to check that the file built locally - I could have used `jekyll build` instead - but didn't bother.  Yeah, it bit me quickly.

`ctrl-c`    
\# Stops the local Jekyll server.

At that point I opened FileZilla and FTP-ed the resulting ***new*** '_site' folder's contents to my web host, updating everything in the remote folder,

Unfortunately the 'No' post failed to build with a title; so I got my phone out, changed its title in the yaml front matter, and pushed the updated page to GitHub and...

`git pull git://github.com/bazbt3/bazbt3.github.io.git`    
\# To pull down the now up-to-date remote repo contents and merge them with the local stuff,

`jekyll serve`    
\# Serves the site again,

This time I checked the local site:

`http://localhost:4000/archive/`    
\# Opened in a browser shows the site in all its glory,

Success, the errant 'No' post has indeed changed to 'Nope'!

Open FileZilla, FTP the '_site' folder's contents to my web host again.  This overwrite option is almost certainly inefficient, through the site's not exactly a bandwidth hog!

Here's the result:

**[http://git.bt3.com/](http://git.bt3.com/)**

Tadaa!

Next, see the [Automation](30-automation.md) page for details of how I made this work unattended...
