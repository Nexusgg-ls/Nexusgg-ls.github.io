#!/bin/bash
# Script para criar o lançador oficial do Supremo RP no BigLinux [cite: 2025-08-25]

NOME_APP="Supremo Enviar"
EXEC_PATH="$HOME/Downloads/supremo-envio"
ICON_PATH="$HOME/Downloads/supremo.jpg"
DESKTOP_FILE="$HOME/.local/share/applications/supremo-envio.desktop"

# Criando o arquivo .desktop [cite: 2025-07-28]
echo "[Desktop Entry]
Name=$NOME_APP
Comment=Enviar arquivos para o Waydroid
Exec=$EXEC_PATH
Icon=$ICON_PATH
Terminal=false
Type=Application
Categories=Utility;
" > "$DESKTOP_FILE"

# Dando permissão de execução [cite: 2025-11-12]
chmod +x "$DESKTOP_FILE"
chmod +x "$EXEC_PATH"

zenity --info --title="Envie arquivos pro Wd" --text="Atalho criado com sucesso no seu Menu de Aplicativos!" --timeout=3
