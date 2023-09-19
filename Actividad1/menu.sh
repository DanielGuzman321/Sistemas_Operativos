#!/bin/bash

show_menu(){
    clear

    echo -e "\e[32m███╗   ███╗███████╗███╗   ██╗██╗   ██╗"
    echo "████╗ ████║██╔════╝████╗  ██║██║   ██║"
    echo "██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║"
    echo "██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║"
    echo "██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝"
    echo -e "╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝\e[0m"
    echo "1. ARBOL"
    echo "2. HOLAMUNDO"
    echo "3. NOMBRE"
    echo "4. ANSI"
    echo "5. Comprobaciones"
    echo "6. Ejemplo de Variables"
    echo "7. Lógica"
    echo "8. Aritmética"
    echo "9. Usos de Variables"
    echo "10. Arrays"
    echo "11. Ejemplo de Algunas Cosas con Variables"
    echo "12. Captura de Señales"
    echo "13. Condicionales y Test"
    echo "14. Comprobaciones Complejas"
    echo "15. Estructura CASE"
    echo "16. Iteración FOR"
    echo "17. Iteración WHILE"
    echo "18. Iteración UNTIL"
    echo "19. Iteración SELECT"
    echo "20. Ejemplos de Funciones"
    echo "21. Salir"
    echo
}

while true; do
    show_menu

    read -p "Ingrese el número de la opción deseada: " choice

    case $choice in
    1)
        bash creararbol.sh
        read -p "Presione Enter para volver al menú."
        ;;
    2)
        bash holamundo.sh
        read -p "Presione Enter para volver al menú."
        ;;
    3)
        bash nombre.sh
        read -p "Presione Enter para volver al menú."
        ;;
    4)
        bash ansi.sh
        read -p "Presione Enter para volver al menú."
        ;;
    5)
        bash comprobaciones.sh
        read -p "Presione Enter para volver al menú."
        ;;
    6)
        bash ejemvariables.sh
        read -p "Presione Enter para volver al menú."
        ;;
    7)
        bash logica.sh
        read -p "Presione Enter para volver al menú."
        ;;
    8)
        bash aritme.sh
        read -p "Presione Enter para volver al menú."
        ;;
    9)
        bash usovariable.sh
        read -p "Presione Enter para volver al menú."
        ;;
    10)
        bash arrays.sh
        read -p "Presione Enter para volver al menú."
        ;;
    11)
        bash ejemplovariables.sh
        read -p "Presione Enter para volver al menú."
        ;;
    12)
        bash captura.sh
        read -p "Presione Enter para volver al menú."
        ;;
    13)
        bash condicional.sh
        read -p "Presione Enter para volver al menú."
        ;;
    14)
        bash comprobaciones.sh
        read -p "Presione Enter para volver al menú."
        ;;
    15)
        bash case.sh
        read -p "Presione Enter para volver al menú."
        ;;
    16)
        bash iteracion.sh
        read -p "Presione Enter para volver al menú."
        ;;
    17)
        bash iteracionwhile.sh
        read -p "Presione Enter para volver al menú."
        ;;
    18)
        bash until.sh
        read -p "Presione Enter para volver al menú."
        ;;
    19)
        bash select.sh
        read -p "Presione Enter para volver al menú."
        ;;
    20)
        bash ejemplofunciones.sh
        read -p "Presione Enter para volver al menú."
        ;;
    21)
        echo "Saliendo del menú"
        exit 0
        ;;
    *)
        echo "Opción no válida. Por favor, ingrese un número válido."
        read -p "Presione Enter para continuar."
        ;;
    esac
done

