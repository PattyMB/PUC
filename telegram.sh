#!/bin/sh

# Get the token from Travis environment vars and build the bot URL:
BOT_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

PARSE_MODE="Markdown"

# Define send message function. parse_mode can be changed to
# HTML, depending on how you want to format your message:

MESSAGE="
-------------------------------------
${{ github.actor }} created commit:
Commit message: ${{ github.event.commits[0].message }}

Repository: ${{ github.repository }}

See changes: https://github.com/${{ github.repository }}/commit/${{github.sha}}
--------------------------------------
"

# echo "${MESSAGE}"
# echo "$MESSAGE"

curl -s -X POST ${BOT_URL} -d chat_id=$TELEGRAM_CHAT_ID -d text="${MESSAGE}" -d parse_mode=${PARSE_MODE}
