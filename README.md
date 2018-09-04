# Slackout
Pipe Unix or Windows Stdout to a Slack Channel

# Description
When doing memory forensics I wished I had an easy way to be notified when volatility was finished parsing a dump file.  I thought Slack would be great for notifying me when it completed, but also to share the results with my #DFIR channel!  It's super easy to use and I find it useful.

# Use

## Linux
Simply clone locally, `chmod +x slackout`, optionally edit the varibles, and  create a symbolic link with something like 
`sudo ln -s /home/curtbraz/slackout /bin`

Then, run whatever command you want and pipe it to slackout, like 
`ls | slackout` 

or 

`cat slackout | slackout '#curtis_private'`.  

<p align="center"><img align="center" alt="slackout-screenshot" src="https://i.imgur.com/p6Egqbq.png"></p>

## Windows
Save the .bat file locally and "Edit the System Environment Variables" by editing "PATH" and adding the folder with the batch program.

Now, simply run whatever command and pipe it to slackout, like
`dir C: | slackout`

You can specify the channel name or leave blank to default to the script variables.  Now you can get alerted w/ stdout!

<p align="center"><img align="center" alt="slackout-screenshot" src="https://i.imgur.com/KRbSRCz.png"></p>


