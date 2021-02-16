# MinaCheck
Some scripts for Mina.

https://pushover.net/ - download and install push app.

(скачать приложение)

Your User Key = user in push.sh

(найдите ваш ключ в кабинете и вставьте в файле после user=)

![alt text](https://s543sas.storage.yandex.net/rdisk/698788bc163c24df8d9d8e9540b83dfe3dfa934ea84950577a1871fc084def5a/602c5c46/5oFYTproQs5IX7nyBKo3Adk_em657DLbpcGPqyYRckD7K7YOf5mDJPb7YspG8fo7hAzI36qV9ep7v92IHTrOjA==?uid=245184877&filename=%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-02-17%20%D0%B2%2000.55.01.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=245184877&fsize=96339&hid=0481bde1db343bb911d98d62064d410b&media_type=image&tknv=v2&etag=2806797f1dcd19433ace138ccfc532a2&rtoken=JZtKKgKMHkqi&force_default=yes&ycrid=na-3657647acc86f34a447fcd7768bc4214-downloader17h&ts=5bb7ce2fb1d80&s=44022a909cadaca750da00e7af4ed38122a53905205e9eb79cc7a0f1e126eb09&pb=U2FsdGVkX192tP-c689q25hHEn3oe5ulWh5auNcn9Cazi8km5qIBGEZf3DXS9F4v05xq-azktLqZ5OIk6b8CPnNPkuHg6PMM-6Mfyt36Ong)

token = https://pushover.net/apps/build create app token in push.sh

(создайте приложение, вставьте его токен после token=)

![alt text](https://s151vla.storage.yandex.net/rdisk/ae4002196dae2e0ea0740de4f10464c41d184b317a0919f7781e5e4a28282f5f/602c5bd8/5oFYTproQs5IX7nyBKo3AdJX6MFiLK8rhnmun6P6dByIAjje3FAgttyPc5Y6-OMePyucTUKiqV8EyjBBs2QZBw==?uid=0&filename=%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-02-17%20%D0%B2%2000.54.50.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=0&fsize=135749&hid=45193c4d02bfe9aa0648bb22c3972c6d&media_type=image&tknv=v2&etag=d6e275d6076337e55b557010f9f05443&rtoken=mFusQOSW2XrI&force_default=no&ycrid=na-4f15abbb4ca771134938fdf997f1d8b4-downloader4f&ts=5bb7cdc6ca600&s=256b65ce2f61782045a812518b9d3595e99be300cae0156e570f0be499f887f4&pb=U2FsdGVkX1-AYNZu4b3hSYIKQAoHKGriVpH8CwkPafnNUKIPIzHi659qSYGRKVttNYDQMx5dH-j9XkbwuXgm-nWXGFyyfeWvHFaFbSHcttU)

Example cron (crontab -e and use SHELL=/bin/bash for better):

(настройте крон crontab -e или nano /etc/crontab также измените SHELL на SHELL=/bin/bash лучше)

*/15 * * * * bash peers.sh

*/15 * * * * bash checkheight.sh

![alt text](https://s576sas.storage.yandex.net/rdisk/768e345b7d09c572fb51593787485e108f525115a721e1d1f0e9be9e2c3a383b/602c5c78/5oFYTproQs5IX7nyBKo3AQwE4c2NPa6SYS8nn0e2p3bcD4x_zumZqd5Btmuf9_AvU3bXTZeIyZlWhHt2QkNLeg==?uid=245184877&filename=%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-02-17%20%D0%B2%2000.58.49.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=245184877&fsize=306510&hid=238880d5d93a4f40e7551b18fbeb05cf&media_type=image&tknv=v2&etag=437acb44ffc43eefe26f7423ef247d71&rtoken=BrjchjKtL3YT&force_default=yes&ycrid=na-41c625562808afb4923cb3f3fe6f9f33-downloader4f&ts=5bb7ce5f60e00&s=25c8a353eeb6bb50bad06ba5be09e278bafa15e8ba3647c749dd7b9f04d692a0&pb=U2FsdGVkX1_wnX4Uvc2NkIilW3EQnExKSTwJpwCgMAVK1tn47hFBSAzkwZuHiUc84tRsY_KWBds_BLDZVbdqgvFlFeFayxz_BlypZ1nBXAc)

To adapt for daemon instead of docker remove the code needed for docker:

remove "docker exec mina ".

(удалить эту строку для демона в файлах)
