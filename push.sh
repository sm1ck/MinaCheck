#!/bin/bash
curl -s \
	  --form-string "token=YOUR_TOKEN" \
	  --form-string "user=YOUR_USER_TOKEN" \
	  --form-string "title=Mina Node" \
	  --form-string "message=Высота блока отстала от MinaExplorer!" \
      --form-string "priority=1" \
	  https://api.pushover.net/1/messages.json