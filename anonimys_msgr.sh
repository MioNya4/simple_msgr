#!/bin/sh

#OT PYTA!!!
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
# 
# gcc anon.c &>/dev/null
# if [ -f ./a.out ]
# then
# 	echo 'compiling ok'
# else
# 	echo 'error compiling binary ; make sure ur gcc works'
# 	exit 2
# fi

# ./a.out -uname YOUR_USERNAME_HERE -tmpdir /tmp -chatfile chat -messagelimit 100 -msgfile msg -nohis

USER='itoa'
tail -f /mnt/yandexdisk/chat &
while [[ 1 ]]
do
	read MSG
	echo "$USER $MSG" >> /mnt/yandexdisk/chat
done
