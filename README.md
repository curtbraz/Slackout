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

<p align="center"><img align="center" alt="slackout-linuxscreenshot" src="https://i.imgur.com/p6Egqbq.png"></p>

## Windows
Save the .bat file locally and "Edit the System Environment Variables" by editing "PATH" and adding the folder with the batch program.

Now, simply run whatever command and pipe it to slackout, like

`dir C: | slackout #curtis_private`

You can specify the channel name or leave blank to default to the script variables.  

<p align="center"><img align="center" alt="slackout-winscreenshot" width="500" src="https://i.imgur.com/KRbSRCz.png">


Even if you don't want the output and you just want to know when a task is finished running, you can add something like
`& echo Volatility Scan Complete! | slackout #curtis` to the end of your command.  You can even schedule it so you can be alerted when your apps start or complete! (with or without errors)</p>
