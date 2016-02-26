# Raspberry Pi setup documentation

## Roadmap:

## Merge the 2 scripts' contents and reduce the cron jobs & their frequency of operation.

Currently all this is activated - in theory - between 07:00 and 23:00 every day. Though it's not going to add a massive load to my internet connection or max-out my web hosting bandwidth it's inefficient.

### Investigate Webhooks

In theory I could create a Webhook to automatically run all this when something changes at the repo.  It looks to be rather complicated.

### Security:

There is essentially zero security in having a username and password hard-coded into a plain text file.  SSH and SCP has to be the way to go.  There's a too-large learning curve for me there right now.
