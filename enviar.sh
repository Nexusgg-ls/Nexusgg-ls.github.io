#!/bin/bash

# 1. Abre o seletor na sua pasta pessoal (Home)
ARQUIVO=$(zenity --file-selection --filename="$HOME/" --title="Supremo RP - Selecionar Arquivo")

# Se cancelar, sai
[ -z "$ARQUIVO" ] && exit 0

# 2. O caminho exato que o seu 'sudo find' confirmou
DESTINO="/home/nexusgg/.local/share/waydroid/data/media/0/Download/"

# 3. O "Copy-Paste" com permissão (Abre a janelinha de senha do BigLinux)
pkexec cp "$ARQUIVO" "$DESTINO"

# 4. Notificação de sucesso
if [ $? = 0 ]; then
    NOME=$(basename "$ARQUIVO")
    zenity --info --title="Supremo RP" --text="Sucesso! '$NOME' foi copiado para o Waydroid." --timeout=3
else
    zenity --error --text="Erro: Permissão negada ou cancelada."
fi
