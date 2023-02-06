#!/bin/sh

#itoa was here, nya~

USER='username'
for var in "$@"
do
    if [[ "$var" == "-init" ]]
    then
		mkdir -p /mnt/yandexdisk || sudo mkdir -p /mnt/yandexdisk
		if [ -d /mnt/yandexdisk ]
		then
			echo ok
		else
				echo 'error permission folder create unable can not' 

			exit 1
		fi

		echo 'u will be asked 4 username which is'
		echo "ur acc name (sry this cant be automated afaik)"
		echo 'and passwd which is'
		echo "ur passwd"
		echo 'letsgo'
		mount -t davfs https://webdav.yandex.ru /mnt/yandexdisk
	fi
	
	if [[ "$var" == "-setusername" ]]
	then
		printf "your username for this session: "
		read USER
	fi
done

echo "-------messages-------"
tail -f /mnt/yandexdisk/chat &
while [[ 1 ]]
do
	printf "type here > "
	read MSG
	DATE="$(date "+%F %T")"
	echo "$DATE $USER $MSG" >> /mnt/yandexdisk/chat
done
