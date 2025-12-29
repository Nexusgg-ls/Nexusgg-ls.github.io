#!/bin/bash

CAMINHO_SCRIPT=$(find $HOME -type f -iname "Swaydroid.sh" 2>/dev/null | head -n 1)

if [ -z "$CAMINHO_SCRIPT" ]; then
    zenity --error --text="Erro: Não consegui encontrar o arquivo 'Swaydroid.sh' em nenhuma pasta.\n\nCertifique-se de que o nome do arquivo está exatamente como 'Swaydroid.sh' (respeitando maiúsculas e minúsculas)."
    exit 1
fi


chmod +x "$CAMINHO_SCRIPT"

echo "[Desktop Entry]
Name=Fechar Waydroid
Comment=Fecha a sessão do Android
Exec=bash \"$CAMINHO_SCRIPT\"
Icon=system-shutdown
Terminal=false
Type=Application
Categories=System;Utility;" > ~/.local/share/applications/Fechar-waydroid.desktop

chmod +x ~/.local/share/applications/Fechar-waydroid.desktop

zenity --info --text="Sucesso! O atalho foi criado.\n\nLocalizado em: $CAMINHO_SCRIPT"
