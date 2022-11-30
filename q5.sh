#!/bin/bash
finalizar=0;
t1=0;
t2=0;
t3=0;
v1=$(bc <<< "scale=2; 0.50");
v2=$(bc <<< "scale=2; 0.60");
v3=$(bc <<< "scale=2; 0.75");
total=0;
while [ "$finalizar" != 4 ]
do
clear
echo "Registro de compras (picolé)"
echo ""
echo ""
echo "Escolha os picolés e depois clique no botão de finalizar!"
echo ""
echo "Valores:"
echo "1 - Tipo 1: 0,50 R$"
echo "2 - Tipo 1: 0,60 R$"
echo "3 - Tipo 1: 0,75 R$"
echo "4 - Finalizar..."
echo ""
echo "Escolha uma opção:  "
read finalizar
if [ $finalizar == 1 ]
then
t1=$(( $t1+1 ));
total=$(bc <<< "scale=2;$total + $v1");
fi
if [ $finalizar == 2 ]
then
t2=$(( $t2+1 ));
total=$(bc <<< "scale=2;$total + $v2");
fi
if [ $finalizar == 3 ]
then
t3=$(( $t3+1 ));
total=$(bc <<< "scale=2;$total + $v3");
fi
done
echo "Resultados:  "
echo "Tipo 1:  $t1"
echo "Tipo 2:  $t2"
echo "Tipo 3:  $t3"
echo "Total: R$ $total"
