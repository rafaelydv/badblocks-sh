#!/bin/bash
#
:>>COMENTARIO
Shellscript criado para apagar os dados do disco rígido
de forma definitiva no linux. Ao executar o script será perguntado
qual o HD para inicar o procedimento de delção dos dados. Aqui é
preciso ter muito cuidado para informar o HD errado. Este comando
não é muito recomendado para SSDs, para isso é melhor o comando
trim.
COMENTARIO
#
echo "ATENÇÃO! CUIDADO PARA NÃO INFORMAR O DISPOSITIVO ERRADO!"
echo
read -p "Informe o dispositivo para destruir os dados: " dispositivo
echo
echo "${dispositivo:?Atenção é obrigatório informar um dispositivo\!}"
echo
echo "DESTRUINDO DADOS -> FASE 1"
dd if=/dev/zero of=$dispositivo bs=1M oflag=sync status=progress
echo
echo "DESTRUINDO DADOS -> FASE 2"
dd if=/dev/zero of=$dispositivo bs=1M oflag=sync status=progress
echo
echo "DESTRUINDO DADOS -> FASE 3"
dd if=/dev/urandom of=$dispositivo bs=1M oflag=sync status=progress
echo
echo "DESTRUIÇÃO CONCLUÍDA!"
echo
