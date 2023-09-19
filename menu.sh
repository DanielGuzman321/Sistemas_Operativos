#!/bin/bash

show_menu(){
clear

echo -e "
\e[32m███╗   ███╗███████╗███╗   ██╗██╗   ██╗
████╗ ████║██╔════╝████╗  ██║██║   ██║
██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝\e[0m"
echo "1. ARBOL"
echo "2. HOLAMUNDO"
echo "3. NOMBRE"
echo "4. SALIR"
echo
}
while true; do
show_menu

read -p "Ingrese el numero de opcion deseada: " choice

case $choice in
1)
bash creararbol.sh
read -p "presione enter para volver"
;;
2)
bash holamundo.sh
read -p "presione enter para volver"
;;

3)
bash nombre.sh
read -p "presione enter para volver"
;;
4)
echo "salir del menu"
exit 0
;;

*)
echo "opcion no valida"
read -p "presione enter para volver"
;;
esac
done