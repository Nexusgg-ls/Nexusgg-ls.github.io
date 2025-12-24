#!/bin/bash
# Script para criar o atalho do ADB Transfer no menu

# Define o caminho onde seu script enviar.sh está guardado
# Altere '/Downloads/' se você salvou em outro lugar
CAMINHO_ENVIAR="$HOME/Downloads/enviar.sh"

echo "[Desktop Entry]
Name=Enviar para o Waydroid
Comment=Envia APKs e arquivos para /sdcard/Download
Exec=bash $CAMINHO_ENVIAR
Icon=document-send
Terminal=false
Type=Application
Categories=Utility;System;" > ~/.local/share/applications/enviar-adb.desktop

# Garante que tanto o atalho quanto o script tenham permissão de execução
chmod +x ~/.local/share/applications/enviar-adb.desktop
chmod +x $CAMINHO_ENVIAR

zenity --info --text="Atalho Criado! Agora você pode abrir o 'ADB: Enviar Arquivo' direto pelo menu do BigLinux."
