#!/bin/bash
clear
echo "Digite um numero:  "
read numero
echo "Escolha a operação a ser feita com o número $numero :"
echo " 1 - Raiz quadrada"
echo " 2 - Calcular a metade do número"
echo " 3 - Calcular 10% do número"
echo " 4 - Calcular o dobro do número"
echo " Escolha a opção que deseja:  "
read opcao
if [ opcao == 1 ]
then
resultado=$(bc <<< "scale=2; sqrt($numero)");
fi
if [ opcao == 2 ]
then
resultado=$(( bc << "scale=2;$numero / 2" ));
fi
if [ opcao == 3 ]
then
resultado=$(( bc << "scale=2;$numero * 0.1" ));
fi
if [ opcao == 4 ]
then
resultado=$(( $numero * 2));
fi

echo "O resultado é igual a: $resultado"
