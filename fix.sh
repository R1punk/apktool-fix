#!/bin/bash
#subcribe channel Ripunk (https://youtube.com/c/Ripunk)
#Script ini hanya mengganti apktool ke versi terbaru


echo "Sedang Memperbaharui Apktool"
apt remove apktool -y >/dev/null 2>&1
sleep 2
apt autoremove -y >/dev/null 2>&1
sleep 2
wget --no-check-certificate "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool" -O /usr/local/bin/apktool && chmod +x /usr/local/bin/apktool
sleep 1
wget --no-check-certificate "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.1.jar" -O /usr/local/bin/apktool.jar && chmod +x /usr/local/bin/apktool.jar
echo "Apktool Siap Di Gunakan"

#echo "Apktool Belum Di Install"
#wget --no-check-certificate "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool" -O /usr/local/bin/apktool && chmod +x /usr/local/bin/apktool
#sleep 1
#wget --no-check-certificate "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.1.jar" -O /usr/local/bin/apktool.jar && chmod +x /usr/local/bin/apktool.jar
#fi
sleep 2
if command -v java >/dev/null 2>&1 ; then
sleep 0.1 && echo "Java [OK]"
else
apt update
apt install openjdk-11-jdk
fi
sleep 2
if command -v zipalign >/dev/null 2>&1 ; then
sleep 0.1 && echo "Zipalign [OK]"
else
apt install zipalign
fi
sleep 0.1 && echo "Semua Sudah Siap Di Gunakan"
sleep 0.1 && echo "Happy Hacking"
sleep 0.1 && echo "Jangan Lupa SUBCRIBE"
