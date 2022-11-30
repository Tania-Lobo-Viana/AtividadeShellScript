#!/bin/bash
echo "Digite o valor da compra:  "
read vcompra;
echo "Digite o valor recebido pelo cliente:  "
read vrecebido;

if test $vrecebido -le $vcompra
then
echo "Está faltando dinheiro, para efetivar a compra!"
else 
vtroco=$(($vrecebido-$vcompra));
nota100=$(($vtroco/100));
restonota100=$(($vtroco%100));
nota10=$(($restonota100/10));
restonota10=$(($restonota100%10));
nota1=$(($restonota10/1));
restonota1=$(($restonota10%1));

echo "Valor total da compra:  $vcompra R$"
echo "Valor recebido pelo cliente:  $vrecebido R$"
echo "Troco a ser recebido:  $vtroco  R$"
echo "Número de notas de 100 R$:  $nota100"
echo "Número de notas de 10 R$:  $nota10"
echo "Número de notas de 1 R$:  $nota1"
fi


