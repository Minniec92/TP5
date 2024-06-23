#!/bin/bash

function determinar_genero { # Utilizamos esta funcion para determinar el genero
    nombre=$1
    
    respuesta=$(curl -s "https://api.genderize.io/?name=$nombre") # Se le pide a la Api
    genero=$(echo "$respuesta" | jq -r '.gender') # De la respuesta de JSON se extra el genero
    echo "El nombre \"$nombre\" es probablemente de género: $genero"
}

echo "Ingrese un nombre para determinar su género:" # Se le pide al usuario su nombre
read nombre

determinar_genero "$nombre" #Llama a la funcion para saber el genero

