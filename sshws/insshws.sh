#!/bin/bash

cd

wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-dropbear
wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-ovpn.py
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-stunnel

chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-ovpn
chmod +x /usr/local/bin/ws-stunnel

wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-dropbear.service && chmod +x /etc/systemd/system/ws-dropbear.service
wget -O /etc/systemd/system/ws-ovpn https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-ovpn.service && chmod +x /etc/systemd/system/ws-ovpn.service
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-stunnel.service && chmod +x /etc/systemd/system/ws-stunnel.service

systemctl daemon-reload
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service
