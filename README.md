# MinaCheck
Some scripts for Mina.

https://pushover.net/ - download and install push app.

Your User Key = user in push.sh

token = https://pushover.net/apps/build create app token in push.sh

Example cron (crontab -e):

*/15 * * * * bash peers.sh

*/15 * * * * bash checkheight.sh

To adapt for daemon instead of docker remove the code needed for docker:

remove "docker exec mina ".
