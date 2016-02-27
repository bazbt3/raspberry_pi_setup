# Raspberry Pi setup documentation

## Roadmap:

### Merge the 2 scripts' contents and reduce the cron jobs & their frequency of operation.

Currently all this is activated - in theory - every 4 hours, every day. *Though it's not going to add a massive load to my internet connection or max-out my web hosting bandwidth it's inefficient.*

> **Stupid was in da house!**

At this point my enthusiasm overrode any logic still remaining.  The files uploading 15 times a day for 30 days a month would have maxed out my web host bandwidth 6 times over.  Be careful when you calculate your requirements.  Better-still, investigate incremental automation.

### Investigate Githooks and Webhooks

In theory I could create a Webhook to automatically run all this when something changes at the repo.  It looks to be rather complicated.

### Security:

There is essentially zero security in having a username and password hard-coded into a plain text file.  SSH and SCP has to be the way to go.  There's a too-large learning curve for me there right now.
