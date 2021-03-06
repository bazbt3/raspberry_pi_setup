#!/usr/bin/env bash
# The above 'shebang' is important, it allows the code to run.
# In the past I've used `#!/bin/bash` but I've been reading since.

# 
# It's important to note that the file permissions should also be changed to allow execution:
# `chmod +x pull_blog_build.sh`
# 

# Prerequisites:
# Mentioned in this repo's README.md file.

# IMPORTANT:
# The following command should only be used as a starting point.
# It entirely avoids common-sense security, containing username & password in plain view!
# I've therefore replaced any sensitive text before the first GitHub commit.
# The 'home/pi/repo/bazbt3.github.io/_site' folder is entirely local to my Raspberry Pi, thus 'safe'.
# FYI 'Pi' is the default username for a new Pi.

ncftpput -R -v -u "username@domain.tld" -p "password" ftp.domain.tld / /home/pi/repo/bazbt3.github.io/_site/*
# Recursively upload the contents of the repo's _site folder to the web root of my git.bt3.com subdomain.

# Where:
# ncftpput : a component of the Linux 'ncftp' command line ftp program,
# -R : Recursive mode; copy whole directory trees,
# -v : Verbose i.e. show upload progress,
# -u "username" : Ftp server username,
# -p "password" : Ftp server password,
# ftp.domain.tld : Remote ftp server (use FQDN or IP),
# / : Remote ftp server directory where all files and subdirectories will be uploaded,
# /local/directory : Local directory (or list of files) to upload to the remote server.

# Instructions from:
# http://www.cyberciti.biz/tips/linux-upload-the-files-and-directory-tree-to-remote-ftp-server.html
