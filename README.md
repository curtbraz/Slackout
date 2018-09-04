# Slackout
Pipe Unix Stdout to a Slack Channel

# Description
When doing memory forensics I wished I had an easy way to be notified when volatility was finished parsing a dump file.  I thought Slack would be great for notifying me when it completed, but also to share the results with my #DFIR channel!  It's super easy to use and useful.

# Use
Simply clone locally, optionally edit the varibles, and  create a symbolic link with something like `sudo ln -s /home/curtbraz/slackout /bin`

Then, run whatever command you want and pipe it to slackout, like `ls | slackout` or `cat slackout | slackout '#curtis_private'`.  You can specify the channel name or leave blank to default to the script variables.

Get alerted w/ stdout!

