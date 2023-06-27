#!/bin/bash
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
IZIN=$(curl https://raw.githubusercontent.com/Azigaming404/registration/main/reseller | awk '{print $1}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermohonan diterima...\e[0m"
    VALIDITY
else
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                ⚡ PREMIUM SPEED SCRIPT ⚡                "$NC
echo -e "$green.........................................................."$NC
echo -e "$RED            PERMISSION DENIED/AKSES DITOLAK"$NC
echo -e "               Autoscript Mod By CyberVPN" | lolcat
echo -e "                    CONTACT TELEGRAM"$NC | lolcat
echo -e "                       @azigaming404"$NC | lolcat
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                       Tunggu To Exit!                    "$NC
echo -e "$green.........................................................."$NC
sleep 3
    exit 0
fi

clear 
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear
[[ ! -f /usr/bin/git ]] && apt install git -y &> /dev/null
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
BGWHITE='\e[0;47;30m'
BGBLUE='\e[1;44m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
BLACK='\033[0;30m'
GRBK='\033[0;40m'
BOLD='\e[1m'
END='\e[0m'
TIMES="3"
IDJURIG="5764457448"
CHATID="-1001558323345"
KEY="6192213356:AAFgMwvvem309dt-zwjqGVJ-q4lbXdnIsic"
URL="https://api.telegram.org/bot$KEY/sendMessage"

add-ip() {
    today=`date -d "0 days" +"%Y-%m-%d"`
    ran=$(date +%s)
    versi="3"
    git clone https://github.com/Azigaming404/Autoscript-by-azi.git /root/Autoscript-by-azi/ &> /dev/null
    clear
    echo ""
    echo "══════════════════════════════════════════"
    read -p "Masukan IP VPS : " ip
    CLIENT_EXISTS=$(grep -w $ip /root/Autoscript-by-azi/izin | wc -l)
    if [[ ${CLIENT_EXISTS} == '1' ]]; then
    echo "IP Na Tidak terDaftar Yihh !"
    exit 0
    fi
    read -p "Masukan Username IP (Contoh : Udin) : " name
    echo "Expired na rek Sabaraha poe?"
    echo "1) 30 Days"
    echo "2) 60 Days"
    echo "3) 90 Days"
    echo "4) Lifetime Sampe Modar"
    echo "5) Set Kumaha Sorangan"
    read -p "Input Menu Number : " exp
    
    if [[ ${exp} == '1' ]]; then
    exp2=`date -d "30 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> /root/Autoscript-by-azi/izin
    elif [[ ${exp} == '2' ]]; then
    exp2=`date -d "60 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> /root/Autoscript-by-azi/izin
    elif [[ ${exp} == '3' ]]; then
    exp2=`date -d "90 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip}" >> /root/Autoscript-by-azi/izin
    elif [[ ${exp} == '4' ]]; then
    exp2="Lifetime"
    echo "### ${name} ${exp2} ${ip}" >> /root/Autoscript-by-azi/izin
    elif [[ ${exp} == '5' ]]; then
    read -p "Hayangna sabaraha poe? : " exp11
    exp2=`date -d "$exp11 days" +"%Y-%m-%d"`
    echo "### ${name} ${exp2} ${ip} ${versi}" >> /root/Autoscript-by-azi/izin
    fi
    cd /root/Autoscript-by-azi
    git config --global user.email "ajip58342@gmail.com" &> /dev/null
    git config --global user.name "Azigaming404" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m m &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/Azigaming404/Autoscript-by-azi
    git push -f https://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@github.com/Azigaming404/Autoscript-by-azi.git &> /dev/null
    rm -rf /root/Autoscript-by-azi
    clear
TEXT="
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
IP VPS SUKSES DITAMBAHKAN
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
<code>NAME AUTHOR : $name</code>
<code>IP SERVER   :</code> $ip
<code>REGISTER On : $today</code>
<code>EXPIRED On  : $exp2</code>
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
Contact Admin :
Grup: @CyberVPN_Tunneling 
Telegram: t.me/azigaming404
WhatsApp: 083875219785
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    echo -e " ${BGWHITE}    [ Succesfully Add IP Address ]          ${NC}"
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    echo -e "Username      : $name"
    echo -e "IP Address    : $ip"
    echo -e "Versi Izin       : $versi"
    echo -e "Registered On : $today"
    echo -e "Expired On    : $exp2"
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
}

del-ip() {
    rm -rf /root/Autoscript-by-azi
    git clone https://github.com/Azigaming404/Autoscript-by-azi.git /root/Autoscript-by-azi/ &> /dev/null
    clear
    echo "List IP VPS nu ges di Registrasi"
    echo ""
    grep -E "^###" "/root/Autoscript-by-azi/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
    grep -E "^#&" "/root/Autoscript-by-azi/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
    echo ""
    read -p "Asupken IP Address nu rek diHapus : " ipdel
    name=$(cat /root/Autoscript-by-azi/izin | grep $ipdel | awk '{print $2}')
    exp=$(cat /root/Autoscript-by-azi/izin | grep $ipdel | awk '{print $3}')
    if [[ ${exp} == 'Lifetime' ]]; then
    sed -i "/^#& $name $exp $ipdel/,/^},{/d" /root/Autoscript-by-azi/izin
    else
    sed -i "/^### $name $exp $ipdel/,/^},{/d" /root/Autoscript-by-azi/izin
    fi
    cd /root/Autoscript-by-azi
    git config --global user.email "ajip58342@gmail.com" &> /dev/null
    git config --global user.name "Azigaming404" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m m &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/Azigaming404/Autoscript-by-azi
    git push -f https://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@github.com/Azigaming404/Autoscript-by-azi.git &> /dev/null
    rm -rf /root/Autoscript-by-azi
    clear
TEXT1="
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
<code>🍀IP VPS SUKSES DIHAPUS🍀</code>
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
<code>🌹NAME AUTHOR : $name</code>
<code>🌺IP SERVER   :</code> $ipdel
<code>🍁EXPIRED On  : $exp</code>
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
<code>        Contact Admin :</code>
<code>     Telegram:</code> t.me/azigaming404
<code>  WhatsApp:</code> wa.me/62895410715294
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
» 🤖@CyberVPN_Tunneling
"
curl -s --max-time $TIMES -d "chat_id=$IDJURIG&disable_web_page_preview=1&text=$TEXT1&parse_mode=html" $URL >/dev/null
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    echo -e " ${BGWHITE}         [ Succesfully Delete IP Address ]          ${NC}"
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    echo -e "Username      : $name"
    echo -e "IP Address    : $ipdel"
    echo -e "Expired On    : $exp"
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
}

renew-ip() {
    rm -rf /root/Autoscript-by-azi
    git clone https://github.com/Azigaming404/Autoscript-by-azi.git /root/Autoscript-by-azi/ &> /dev/null
    clear
    echo "List IP Address Have Been Registered"
    echo ""
    grep -E "^###" "/root/Autoscript-by-azi/izin" | cut -d ' ' -f 2-6 | column -t | sort | uniq
    echo ""
    read -p "Asupken IP Address nu rek diRenew: " ipdel
    read -p "Nambah baraha Poe? : " days
    name=$(cat /root/Autoscript-by-azi/izin | grep $ipdel | awk '{print $2}')
    exp=$(cat /root/Autoscript-by-azi/izin | grep $ipdel | awk '{print $3}')
    now=$(date +%Y-%m-%d)
    d1=$(date -d "$exp" +%s)
    d2=$(date -d "$now" +%s)
    exp2=$(( (d1 - d2) / 86400 ))
    exp3=$(($exp2 + $days))
    exp4=`date -d "$exp3 days" +"%Y-%m-%d"`
    sed -i "s/### $name $exp $ipdel/### $name $exp4 $ipdel/g" /root/Autoscript-by-azi/izin
    cd /root/Autoscript-by-azi
    git config --global user.email "ajip58342@gmail.com" &> /dev/null
    git config --global user.name "Azigaming404" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m m &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/Azigaming404/Autoscript-by-azi
    git push -f https://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@github.com/Azigaming404/Autoscript-by-azi.git &> /dev/null
    rm -rf /root/Autoscript-by-azi
    clear
TEXT2="
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
IP VPS SUKSES DIPERPANJANG
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
<code>NAME AUTHOR : $name</code>
<code>IP SERVER   :</code>  $ipdel
<code>REGISTER On : $now</code>
<code>EXPIRED On  : $exp4</code>
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
Contact Admin : 
Grup: @CyberVPN_Tunneling
Telegram: t.me/azigaming404
WhatsApp: 083875219785
<code>━━━━━━━━━━━━━━━━━━━━━━</code>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT2&parse_mode=html" $URL >/dev/null
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    echo -e " ${BGWHITE}         [ Succesfully Renew IP Address ]          ${NC}"
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    echo -e "Username      : $name"
    echo -e "IP Address    : $ipdel"
    echo -e "Registered On : $now"
    echo -e "Expired On    : $exp4"
    echo -e "${Lred} ══════════════════════════════════════════${NC}"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
}

clear

echo -e "${Lred} ══════════════════════════════════════════${NC}"
echo -e " ${BGWHITE}        [ REGISTER IP VPS MENU ]          ${NC}"
echo -e "${Lred} ══════════════════════════════════════════${NC}"
echo -e " $PURPLE (01) $NC $Lyellow Tambahkeun IP VPS"$NC     
echo -e " $PURPLE (02) $NC $Lyellow Hapus IP VPS"$NC
echo -e " $PURPLE (03) $NC $Lyellow Perpanjang IP VPS"$NC
echo -e ""
echo -e " $PURPLE Created By $NC $Lyellow @CyberVPN"
echo -e "${Lred} ══════════════════════════════════════════${NC}"
echo ""
read -p "Please Input Menu Number : " menu
case $menu in
1 | 01)
clear
add-ip
;;
2 | 02)
clear
del-ip
;;
3 | 03)
clear
renew-ip
;;
*)
echo "Please Input An Correct Menu !"
sleep 1
menu
;;
esac