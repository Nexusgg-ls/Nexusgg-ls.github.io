#!/bin/bash
# Descobre o caminho completo de onde este script está rodando agora [cite: 2025-11-12]
DIRETORIO_ATUAL=$(dirname "$(readlink -f "$0")")

# Define os nomes dos arquivos [cite: 2025-11-12]
EXECUTAVEL="$DIRETORIO_ATUAL/supremo-envio"
ICONE="$DIRETORIO_ATUAL/supremo.jpg"
NOME_ATALHO="$HOME/.local/share/applications/supremo-envio.desktop"

# Cria o atalho usando os caminhos que ele acabou de descobrir [cite: 2025-08-25, 2025-11-12]
echo "[Desktop Entry]
Name=Supremo Enviar
Comment=Sincronizador para Waydroid
Exec=$EXECUTAVEL
Icon=$ICONE
Terminal=false
Type=Application
Categories=Utility;
" > "$NOME_ATALHO"

# Garante que tudo tenha permissão de rodar [cite: 2025-11-12]
chmod +x "$EXECUTAVEL"
chmod +x "$NOME_ATALHO"

zenity --info --title="Envie arquivos pro Wd" --text="Sucesso! O atalho foi criado e configurado para esta pasta: $DIRETORIO_ATUAL" --timeout=5
