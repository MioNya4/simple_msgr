#!/bin/sh

#itoa was here, nya~

mkdir -p /mnt/yandexdisk || sudo mkdir -p /mnt/yandexdisk

if [ -d /mnt/yandexdisk ]
then
	echo ok
else
        echo 'error permission folder create unable can not' 

	 exit 1
fi

echo 'u will be asked 4 username which is'
echo ur acc name here
echo 'and passwd which is'
echo ur passwd for apps
echo 'letsgo'
mount -t davfs https://webdav.yandex.ru /mnt/yandexdisk

USER='username'
tail -f /mnt/yandexdisk/chat &
while [[ 1 ]]
do
	printf "type here > "
	read MSG
	echo "$USER $MSG" >> /mnt/yandexdisk/chat
done
