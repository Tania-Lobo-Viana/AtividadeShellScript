#!/bin/bash
echo "Digite o nome do funcionário:   "
read func;
echo "Digite o total de horas trabalhadas no mês:   "
read ht;
echo "Digite o valor recebido por cada hora trabalhada:  "
read vht;
echo "Digite o valor percentual do desconto no salário:  "
read pd;

sb=$(bc <<< "scale=2;$ht*$vht");
td=$(bc <<< "scale=2;($pd/100)*$sb");
sl=$(bc <<< "scale=2;$sb-$td");

echo " $func trabalhou  $ht horas no mês          "
echo "     #################################      "
echo "                  CONTRACHEQUE              "
echo "============================================"
echo "                                            "
echo " Funcionário = $func                        "
echo "============================================"
echo " Horas Trabalhadas = $ht                    "
echo "============================================"
echo " Salário Bruto = $sb R$                     "
echo "============================================"
echo " Total descontado = $td R$                  "
echo "============================================"
echo " Salário Líquido = $sl R$                   "
echo "============================================"
echo "             FIM DO CONTRACHEQUE            "
echo "     ################################       "
