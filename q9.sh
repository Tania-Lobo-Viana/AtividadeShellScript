#!/bin/bash
produto=1;
echo "Produto dos inteiros impares de 1 ate 15"
i=1;
while test $i -le 15
do
produto=$(($produto*$i));
i=$(($i+2));
done
echo "O resultado da operacao e:  $produto"
