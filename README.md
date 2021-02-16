# MinaCheck
Some scripts for Mina.

https://pushover.net/ - download and install push app. (скачать приложение)

Your User Key = user in push.sh (найдите ваш ключ в кабинете и вставьте в файле после user=)

token = https://pushover.net/apps/build create app token in push.sh (создайте приложение, вставьте его токен после token=)

Example cron (crontab -e and use SHELL=/bin/bash for better): (настройте крон crontab -e или nano /etc/crontab также измените SHELL на SHELL=/bin/bash лучше)

*/15 * * * * bash peers.sh

*/15 * * * * bash checkheight.sh

To adapt for daemon instead of docker remove the code needed for docker:

remove "docker exec mina ". (удалить эту строку для демона в файлах)
