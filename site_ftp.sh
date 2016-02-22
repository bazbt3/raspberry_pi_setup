#!/usr/bin/env bash
# The above 'shebang' is important, it allows the code to run.
# In the past I've used `#!/bin/bash` but I've been reading since.

# 
# THIS FILE HAS NOT BEEN TESTED LOCALLY, IT'S A PLACEHOLDER!
# It's important to note that the file permissions should also be changed to allow execution:
# `chmod +x site_ftp.sh`
# 

# Prerequisites:
# Mentioned in this repo's README.md file.

# IMPORTANT:
# The following command should only be used as a starting point.
# It entirely avoids common-sense security, containing username & password in plain view!
# I've therefore replaced any sensitive text before the first GitHub commit.
# The '~/repo/bazbt3.github.io/_site' folder is entirely local to my Raspberry Pi, thus 'safe'.

ncftpput -R -v -u "username@domain.tld" -p "password" ftp.domain.tld / ~/repo/bazbt3.github.io/_site
# Recursively upload the contents of the repo's site folder to the web root of my blog subdomain.

# Where:
# ncftpput : a component of the Linux 'ncftp' command line ftp program,
# -R : Recursive mode; copy whole directory trees,
# -v : Verbose i.e. show upload progress,
# -u "username" : Ftp server username,
# -p "password" : Ftp server password,
# ftp.domain.tld : Remote ftp server (use FQDN or IP),
# /remote/directory : Remote ftp server directory where all files and subdirectories will be uploaded,
# /local/directory : Local directory (or list of files) to upload to the remote server.

# Instructions, slightly edited, from:
# http://www.cyberciti.biz/tips/linux-upload-the-files-and-directory-tree-to-remote-ftp-server.html
