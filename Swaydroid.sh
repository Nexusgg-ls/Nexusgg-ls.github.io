#!/bin/bash

# Pergunta rápida para evitar cliques acidentais
zenity --question --title="Encerrar Waydroid" --text="Deseja fechar o Android agora?" --width=250

if [ $? = 0 ]; then
    # Executa o comando que você definiu
    waydroid session stop

    # Notificação discreta de sucesso
    zenity --info --title="Pronto" --text="Sessão encerrada!" --timeout=2
else
    exit
fi
