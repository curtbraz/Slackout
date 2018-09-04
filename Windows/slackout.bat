:: Insert Default Slack Channel & API Token Here
@echo off
set Slack_Channel="#YOUR_SLACK_CHANNEL_HERE"
set Slack_API="YOUR_LEGACY_SLACK_TOKEN_HERE"

setlocal enabledelayedexpansion

:: Reads stdin and Passes to Slack API in Text Snippet
for /F "tokens=*" %%a in ('more') do (
  set stdin=!stdin!^

%%a
)

IF "%~1" == "" (set channel=%Slack_Channel%)

IF NOT "%~1" == "" (set channel=%1)

:: Echoes to CMD Prompt
echo !stdin!

:: Makes Curl Request to API
curl -s -F "content=!stdin!" -F "channels=%channel%" -F "title=Slack Stdout" -H "Authorization: Bearer %Slack_API%" https://slack.com/api/files.upload
