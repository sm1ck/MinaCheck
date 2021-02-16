# MinaCheck
Some scripts for Mina.

https://pushover.net/ - download and install push app.

(скачать приложение)

Your User Key = user in push.sh

(найдите ваш ключ в кабинете и вставьте в файле после user=)

token = https://pushover.net/apps/build create app token in push.sh

(создайте приложение, вставьте его токен после token=)

![alt text](https://s151vla.storage.yandex.net/rdisk/ae4002196dae2e0ea0740de4f10464c41d184b317a0919f7781e5e4a28282f5f/602c5bd8/5oFYTproQs5IX7nyBKo3AdJX6MFiLK8rhnmun6P6dByIAjje3FAgttyPc5Y6-OMePyucTUKiqV8EyjBBs2QZBw==?uid=0&filename=%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-02-17%20%D0%B2%2000.54.50.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=0&fsize=135749&hid=45193c4d02bfe9aa0648bb22c3972c6d&media_type=image&tknv=v2&etag=d6e275d6076337e55b557010f9f05443&rtoken=mFusQOSW2XrI&force_default=no&ycrid=na-4f15abbb4ca771134938fdf997f1d8b4-downloader4f&ts=5bb7cdc6ca600&s=256b65ce2f61782045a812518b9d3595e99be300cae0156e570f0be499f887f4&pb=U2FsdGVkX1-AYNZu4b3hSYIKQAoHKGriVpH8CwkPafnNUKIPIzHi659qSYGRKVttNYDQMx5dH-j9XkbwuXgm-nWXGFyyfeWvHFaFbSHcttU)

Example cron (crontab -e and use SHELL=/bin/bash for better):

(настройте крон crontab -e или nano /etc/crontab также измените SHELL на SHELL=/bin/bash лучше)

*/15 * * * * bash peers.sh

*/15 * * * * bash checkheight.sh

To adapt for daemon instead of docker remove the code needed for docker:

remove "docker exec mina ".

(удалить эту строку для демона в файлах)
