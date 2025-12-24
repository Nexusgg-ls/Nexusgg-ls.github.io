#!/bin/bash
# Script para criar o atalho no menu do sistema

CAMINHO_SCRIPT="$HOME/Downloads/Fechar_waydroid.sh" # Altere se necessário

echo "[Desktop Entry]
Name=Fechar Waydroid
Comment=Fecha a sessão do Android
Exec=bash $CAMINHO_SCRIPT
Icon=system-shutdown
Terminal=false
Type=Application
Categories=System;Utility;" > ~/.local/share/applications/Fechar-waydroid.desktop

chmod +x ~/.local/share/applications/Fechar-waydroid.desktop

zenity --info --text="Atalho criado! Agora você pode pesquisar 'Fechar Waydroid' no menu do BigLinux."
