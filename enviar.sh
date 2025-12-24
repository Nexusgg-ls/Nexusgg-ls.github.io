#!/bin/bash

# Abre a barra para você digitar o nome do arquivo
ARQUIVO=$(zenity --entry --title="ADB Transfer" --text="Digite o nome do arquivo (ex: arquivo.apk):")

# Se você não digitar nada ou cancelar, o script para
if [ -z "$ARQUIVO" ]; then
    exit 0
fi

# O comando exato que você pediu, usando a variável do que você digitou
adb push ~/Downloads/"$ARQUIVO" /sdcard/Download/

# Aviso de que terminou
zenity --info --text="Comando executado: adb push ~/Downloads/$ARQUIVO /sdcard/Download/" --title="Status"
