#!/bin/bash
#!/bin/bash
i=0;
while test $i -le 10
do
echo "Digite $i° numero: "
read numero;
if [ $i == 0 ]
then
soma=$(($soma + $numero));
maior=$numero;
menor=$numero;
fi
if [ $numero -gt $maior ]
then 
maior=$numero;
fi
if [ $numero -lt $menor ]
then 
menor=$numero;
fi
i=$(($i+1));
done
echo "Media dos numeros digitados: "
echo "scale=2;$soma/10" | bc
echo "Maior numero digitado: "
echo "$maior"
