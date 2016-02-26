# Raspberry Pi setup documentation

## What this is:

Shell scripts driven by cron jobs (regular timed events), which:

* Use the `git` command line to pull the blog repo from GitHub,
* Use the `Jekyll` static web site generator to build it locally,
* Use a command line FTP client software to upload the entire site (for now) to my web host, over-writing what's there.

## The documentation:

* [The prerequisites](10-prerequisites.md) - What's necessary to get this to work.
* [The creation of the commands](20-commands.md) - This will be obsolete; the files have internal doumentation.
* [Automating it all](30-automation.md) - Cron jobs are surprisingly easy to get right.
