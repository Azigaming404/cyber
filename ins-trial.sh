clear
echo "Downloading trial configuration"

sleep 0.5

wget -q -O /usr/bin/trial "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/trial/trial.sh" && chmod +x /usr/bin/trial

wget -q -O /usr/bin/trial-vmess "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/trial/trial-vmess.sh" && chmod +x /usr/bin/trial-vmess


wget -q -O /usr/bin/trial-trojan "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/trial/trial-trojan.sh" && chmod +x /usr/bin/trial-trojan


wget -q -O /usr/bin/trial-udp "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/trial/trial-udp.sh" && chmod +x /usr/bin/trial-udp



wget -q -O /usr/bin/trial-vless "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/trial/trial-vless.sh" && chmod +x /usr/bin/trial-vless


wget -q -O /usr/bin/menu-trial "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/trial/trial-generator.sh" && chmod +x /usr/bin/menu-trial