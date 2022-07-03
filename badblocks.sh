#!/bin/bash
#
:<<COMENTARIO
Shellscript para executar testes no HD com o programa badblocks
à procura de setores com defeito. Escolha um método e descomente
a linha que contém o comando badblocks. Informe também a partição
em que a varredura deve ser realizada. Na parte do comando que 
contém a palavra "sua_partição" troque pela partição em deve ser
feita a varredura.

Veja abaixo para que serve cada parâmetro do comando:
-s = Mostra o avanço do procedimento
-v = verbose mode
-c 10240 = Verifica 10.240 blocos do HD por vez
-n = non-destructive read-write
-w = destructive write-mode
COMENTARIO
#
# Método 1 - Testa o HD apenas por leitura buscando badblocks. É mais seguro!
#badblocks -sv -c 10240 /dev/sua_partição
#
# Método 2 - Testa o HD lendo, escrevendo e também verificando as informações, é mais completo e mais lento.
#badblocks -nsv -c 10240 /dev/sua_particao
#
# Método 3 - Faz uma formatação na partição do seu HD, só deve ser usado para testar HDs onde não existem arquivos que não podem ser perdidos!
#badblocks -wsv -c 10240 /dev/sua_particao
