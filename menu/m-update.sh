#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";

    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/Profile/main/Profile/permission/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";

exit 0
fi
clear
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/menu.sh" && chmod +x /usr/bin/menu
#wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/menu-ss.sh" && chmod +x /usr/bin/menu-ss
wget -q -O /usr/bin/m-vmess "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-vmess.sh" && chmod +x /usr/bin/m-vmess
wget -q -O /usr/bin/m-vless "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-vless.sh" && chmod +x /usr/bin/m-vless
wget -q -O /usr/bin/m-trojan "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-trojan.sh" && chmod +x /usr/bin/m-trojan
wget -q -O /usr/bin/m-system "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-system.sh" && chmod +x /usr/bin/m-system
wget -q -O /usr/bin/m-sshovpn "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-sshovpn.sh" && chmod +x /usr/bin/m-sshovpn
wget -q -O /usr/bin/m-sshws "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-ssws.sh" && chmod +x /usr/bin/m-ssws
wget -q -O /usr/bin/m-webmin "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-webmin.sh" && chmod +x /usr/bin/m-webmin
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/running.sh" && chmod +x /usr/bin/running
wget -q -O /usr/bin/m-domain "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-domain.sh" && chmod +x /usr/bin/m-domain
wget -q -O /usr/bin/bw "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/bw.sh" && chmod +x /usr/bin/bw
#wget -q -O /usr/bin/autoboot "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/restart.sh" && chmod +x /usr/bin/autoboot
wget -q -O /usr/bin/m-tcp "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-tcp.sh" && chmod +x /usr/bin/m-tcp
wget -q -O /usr/bin/auto-reboot "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/auto-reboot.sh" && chmod +x /usr/bin/auto-reboot
wget -q -O /usr/bin/clearcache "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/clearcache.sh" && chmod +x /usr/bin/clearcache
#wget -q -O /usr/bin/info "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/update.sh" && chmod +x /usr/bin/update
#wget -q -O /usr/bin/mspeed "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/menu-speedtest.sh" && chmod +x /usr/bin/mspeed
#wget -q -O /usr/bin/mbandwith "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/menu-bandwith.sh" && chmod +x /usr/bin/mbandwith
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/restart.sh" && chmod +x /usr/bin/restart
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/menu/m-update.sh" && chmod +x /usr/bin/m-update
echo -e " [INFO] Update Successfully"
sleep 5
exit
