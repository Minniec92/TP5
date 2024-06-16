#!/bin/bash

number=$(( (RANDOM % 100) +1 ))

echo "Bienvenido a la adivinanza de números"
echo "Tenés que adivinar un número que esté entre 0 y 100"

while true; do
read -p "Ingresá tu número" guess 

if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
echo "Por favor ingresa un número"
continue
fi

if (( guess < number )); then 
echo "El número es más alto"
elif (( guess > number )); then
echo "El número es menor" 
else 
echo "Bien!Adivinaste el número $number :) "
break
fi
done
