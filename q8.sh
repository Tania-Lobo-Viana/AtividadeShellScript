#!/bin/bash
echo "Digite 50 numeros inteiros, podendo ser positivos e negativos:  "
i=0;
soma=0;
qtde=0;
while test $i -le 49
do
i=$(($i+1));
echo "Digite o numero:  "
read numero
if [ $numero -ge 0 ]
then
soma=$(($soma + $numero));
else
qtde=$(($qtde + 1));
fi
done
echo "A soma dos inteiros positivos:  $soma"
echo "Quantidade de numeros negativos:  $qtde"
