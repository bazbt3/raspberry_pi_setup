## The crontab file (cron job)

I wanted to pull my GitHub Pages repo to my Raspberry Pi, build it and then FTP it to my web host - all to a timed schedule.  Creating a routine using a 'cron job' (built into Linux) is *surprisingly* easy.

Use `crontab -e` at the Terminal command line:

Each line is made up as follows: minute past the hour, hour, day of month, month, day of week, and a command to run.  (The asterisks indicate an implicit requirement to do something every one of the selected time types.)

`45 */4 * * * /bin/bash --login /home/pi/repo/pull_blog_build.sh`
`50 */4 * * * /home/pi/repo/site_ftp.sh`

This pulls and builds at 45 minutes past the hour, every 4 hours (this takes a few seconds), then uploads the site via ftp at 50 minutes past every the hour, every 4 hours (this takes a few minutes) - every day.

I added `/bin/bash --login` to ensure the script runs in a login shell, and added an RVM-specific command to ensure Ruby works (see the [pull_blog_build.sh](pull_blog_build.sh) file.)

I suppose I should leave my Pi switched on.
