#!/bin/sh
#warna
b="\033[1m"
r="\033[1;31m"
k="\033[33;1m"
p="\033[37;1m"
#variabel
baner(){
    printf " 
 $r____       ______      ____      
$r/\  _\     /\    _\   / /\  _\    
$r\ \ \L\_\  \ \ \/\ \  \ \ \/\_\  
 $r\ \  _\L   \ \ \ \ \  \ \ \/_/_ 
  $k\ \ \L\ \  \ \ \_\ \  \ \ \L\ 
   $k\ \____/   \ \____/   \ \____/
    $k\/___/     \/___/     \/___/ 
        
        $r>$k@$r>$k D@rk_Devil#666
        $r>$k@$r>$k 089652884613
        $r>$k@$r>$k Darkhytd666@gmail.com
        "
}
menu(){
    echo ''
    sleep 0.5
    echo "$r[$k+$r] $p Menu : "
    echo ''
    sleep 0.5
    echo "$k 1$r) $p Encrypt"
    sleep 0.5
    echo "$k 2$r) $p Depcrypt"
    sleep 0.5
    echo "$k 3$r) $p Install bahan"
    sleep 0.5
    echo "$k 4$r) $p Buat catatan"
    sleep 0.5
    echo "$k 01$r)$p Info"
    sleep 0.5
    echo "$k 0$r) $p Exit"
    sleep 0.5
    echo ''
    echo -n "$r[$k?$r] $k Choose : "
    read pilih1
    case $pilih1 in
    1)enc
    
    ;;
    
    2)dep
    
    ;;
    
    3)sleep 2
    clear
    pkg install openssl
    pkg install openssl-tool
    echo "$r[$k+$r] $p Ijinkan termux mengakses"
    sleep 3
    termux-setup-storage
    sleep 3
    clear
    baner
    menu
    
    ;;
    
    4)sleep 2
    clear
    pesan
    
    ;;
    
    01)sleep 2
    clear
    baner
    echo ""
    sleep 0.5
    echo "$r[$k+$r] $k Author :$p D@rk_Devil#666"
    sleep 0.5
    echo "$r[$k+$r] $k WA :$p 089652884613"
    sleep 0.5
    echo "$r[$k+$r] $k Email :$p Darkhytd666@gmail.com"
    sleep 3
    exit
    
    ;;
    
    0)sleep 2
    clear
    exit
    
    ;;
    
    *)sleep 2
    echo "$r[$k!$r] $k Error : Wrong Input"
    sleep 3
    clear
    baner
    menu
    
    ;;
    
    esac
}
enc(){
    sleep 2
    clear
    baner
    echo ''
    echo -n "$r[$k?$r] $k Nama file : "
    read bustayo
    echo -n "$r[$k?$r] $k OUTPUT : "
    read upin
    echo "$r[$k+$r] $p Mohon tunggu .  .  ."
    sleep 3
    mkdir EDTEncrypt
    cd EDTEncrypt
    openssl aes-256-cbc -a -salt -in $bustayo -out $upin
    sleep 2
    echo "$r[$k√$r] $k Sukses di Encrypt"
}
dep(){
    sleep 2
    clear
    baner
    echo ''
    echo -n "$r[$k?$r] $k Nama file : "
    read kakros
    echo -n "$r[$k?$r] $k OUTPUT : "
    read ohayo
    sleep 2
    mkdir EDTDepcrypt
    cd EDTDepcrypt
    openssl aes-256-cbc -d -a -in $kakros -out $ohayo
    sleep 2
    echo "$r[$k√$r] $k Sukses di Depcrypt"
}
lisen(){
    printf " _     ____  _____ _  _     
$r/ \   /  _ \/  __// \/ \  /|
$r| |   | / \|| |  _| || |\ ||
$p| |_/\| \_/|| |_//| || | \||
$p\____/\____/\____\\_/\_/  \|
                            
"
echo ''
echo -n "$r[$k?$r] $k Kode verifikasi : " 
read code
case $code in
450987)sleep 2
echo "$r[$k√$r] $k Login sukses"
sleep 2
clear
baner
menu

;;

*)sleep 3
echo "$r[$k!$r] $r Kode verifikasi salah"
sleep 2
clear
lisen

;;

esac
}
pesan(){
    baner
    echo ""
    echo -n "$r[$k?$r] $k Nama : "
    read tui
    echo -n "$r[$k?$r] $k Umur : "
    read asdf
    echo -n "$r[$k?$r] $k Makanan kesukaan : "
    read poi
    echo -n "$r[$k?$r] $k Orang yg lu suka : "
    read pacar
    echo -n "$r[$k?$r] $k No hp lu : "
    read target
    echo -n "$r[$k?$r] $k Status : "
    read keluarga
    sleep 2
    mkdir Notein
    cd Notein
    hg="Note.txt"
    touch $hg
    echo "Nama      :" $tui>$hg
    echo "Umur      :" $asdf>>$hg
    echo "Makanan   :" $poi>>$hg
    echo "Nama DOI  :" $pacar>>$hg
    echo "No Hp     :" $target>>$hg
    echo "Status    :" $keluarga>>$hg
    echo ""
    echo "$r[$k?$r] $k Sukses disimpan di Note.txt"
    sleep 6
    baner
    menu
}
#awal tools
sleep 2
clear
echo "$r[$k*$r] $k Memulai tools..."
sleep 2
clear
lisen
