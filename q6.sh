#!/bin/bash
echo "Digite a idade do atleta:  "
read idade
if [ $idade -ge 5 ] && [ $idade -le 10 ]
then
echo "O atleta pertence a Categoria Infantil"
fi
if [ $idade -ge 11 ] && [ $idade -le 15 ]
then
echo "O atleta pertence a Categoria Juvenil"
fi
if [ $idade -ge 16 ] && [ $idade -le 20 ]
then
echo "O atleta pertence a Categoria Junior"
fi
if [ $idade -ge 21 ] && [ $idade -le 25 ]
then
echo "O atleta pertence a Categoria Profissional"
fi
