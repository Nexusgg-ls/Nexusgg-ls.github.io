#!/bin/bash

# 1. Seleciona o arquivo (Abre na Home de QUALQUER usuário)
ARQUIVO=$(zenity --file-selection --filename="$HOME/" --title="Envie arquivos pro seu Wd")

# Se cancelar, sai
[ -z "$ARQUIVO" ] && exit 0

# 2. O caminho universal (Funciona em qualquer PC com Waydroid instalado no padrão)
DESTINO="$HOME/.local/share/waydroid/data/media/0/Download/"

# 3. Garante que a pasta existe (Caso o usuário nunca tenha aberto o Android)
mkdir -p "$DESTINO"

# 4. O Copy-Paste com permissão de administrador
pkexec cp "$ARQUIVO" "$DESTINO"

# 5. Notificação final
if [ $? = 0 ]; then
    NOME=$(basename "$ARQUIVO")
    zenity --info --title="Waydroid" --text="Sucesso! '$NOME' foi enviado para o Waydroid." --timeout=3
else
    zenity --error --text="Erro: Falha na permissão ou pasta não encontrada."
fi
