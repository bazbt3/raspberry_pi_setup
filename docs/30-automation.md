# Raspberry Pi setup documentation

## Automation first steps:

To automate this I needed to create a Linux shell script.  I've *some* familiarity with the process, but it was trial-and-error I'm afraid.  If you want to see more you'll have to look at the files in this repo - of the form `*.sh`.

I created stuff in the following order:

1. A first executable shell script to have `git` to pull the entire contents from the remote repo and over-write what's local (I'll make sure it exists first!), then build the site using `Jekyll`,
2. A second executable script to `ftp` the files to my web host,
3. Create 2 `cron` jobs; the first to pull & build the site, the second to FTP it.

### 1. Pull the repo, build it locally:

The first file - [`pull_blog_build.sh`](/pull_blog_build.sh) - is now in this repo.

### 2. FTP the file to the web host root:

The second file - a security-sanitised version of my local [`site_ftp.sh`](/site_ftp.sh) - is now in this repo.

### 3. Run both commands to a schedule:

I've now automated the routine - see [crontab.md](/crontab.md).  There's no intelligence to it; I'm oblivious at this stage to what will happen if one or both commands fail at any stage.

Next, see [the Roadmap](90-roadmap.md) for desirable and potential improvements to this.
