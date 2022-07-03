#!/bin/bash
#
:<<COMENTARIO
Shellscritp para fazer a recuperação de dados de uma unidade
de armazenamento no linux diretamente para outra unidade ou
para algum diretório específico dentro do linux. Este script
também pode ser usado para clonar HD's.
COMENTARIO
#
echo "RECUPERAÇÃO DE DADOS!"; sleep 2
echo
read -p "Informe a media de origem para recuperar os dados: " origem
echo "${origem:?Atenção é obrigatório informar este dado\!}"
echo
read -p "Informe a media de destino ou local para salvar os dados: " destino
echo "${destino:?Atenção é obrigatório informar este dado\!}"
echo
echo "RECUPERAÇÃO DOS DADOS EM ANDAMENTO!"
dd if=$origem of=$destino bs=4k conv=noerror,sync
echo
echo "RECUPERAÇÃO DE DADOS CONCLUÍDA!"
