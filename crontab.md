## The crontab file (cron job)

I wanted to pull my GitHub Pages repo to my Raspberry Pi, build it and then FTP it to my web host - all to a timed schedule.  Creating a routine using a 'cron job' (built into Linux) is *surprisingly* easy.

Use `crontab -e` at the Terminal command line:

Each line is made up as follows: minute past the hour, hour, day of month, month, day of week, and a command to run.  (The asterisks indicate an implicit requirement to do something every one of the selected time types.)

`45 * * * * /home/pi/repo/pull_blog_build.sh`    
`55 * * * * /home/pi/repo/site_ftp.sh`

This pulls and builds at 45 minutes past every hour, then uploads the site via ftp at 55 minutes past every hour - every day.  There are ways of restricting the range during which things happen but that, for me, is for another day.

I suppose I should leave my Pi switched on.
