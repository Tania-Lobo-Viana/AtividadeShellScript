#!/bin/bash
echo "Escreva o valor do raio da sua circunferência:     "
read raio;
pi=3.14159;

echo "scale=5 ; $pi*($raio*$raio)" | bc

