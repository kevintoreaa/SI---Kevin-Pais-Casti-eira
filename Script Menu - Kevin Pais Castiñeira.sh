#!/bin/bash

# --Tarea Menú--

clear

function iniciofuncion() {
	echo "---Menú---"
	echo "--- 1  Listar arhivos do directorio actual."
	echo "--- 2  Actualizar paquetes e sistema. (Solicitarase acceso de superusuario)"
	echo "--- 3  Ver información del CPU"
	echo "--- 4  Crear un archivo en el directorio actual."
	echo "--- 5  Renomear arquivo"
	echo "--- 6 Salir"
	read -p "Escolle unha opción: " opcionmenu
}

while (( opcionmenu != 6 ))
do 
	iniciofuncion
	case $opcionmenu in
		1)
		echo "Escojiste la opción 1"
		ls
		;;
		2)
		clear
		echo "Escojiste la opción 2"
		sudo apt-get update -y
		sudo apt-get upgrade -y
		clear
		;;
		3)
		clear
		echo "Escojiste la opción 3"
		lscpu
		;;
		4)
		clear
		echo "Escojiste la opción 4"
		read -p "Escoje el nombre y extension del archivo " nombrearchivo
		touch $nombrearchivo 
		;;
		5)
		clear
		echo "Escojiste la opción 5"
		read -p "Escribe el nombre y extensión del archivo que deseas renombrar" nombreantiguo
		read -p "Escribe el nombre y extension nuevo del archivo" nombrenuevo
		mv $nombreantiguo $nombrenuevo
		;;
		6)
		clear
		echo "Escojiste la opción 6"
		echo "Saliendo..."
		exit
	esac
done
