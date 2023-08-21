#!/bin/bash

if [ $# -ne 4 ]; then
echo "Uso: $0 <ipserver> <conexoes> <requisicoes> <resultados>"
exit 1

fi

ipserver=$1
conexoes=$2
requisicoes=$3
resultados=$4

for ((i=1; i<=$conexoes; i++)); do
ab -n $requisicoes -c 1 -g $resultados http://$ipserver/ & 
done

wait 
cat $resultados
