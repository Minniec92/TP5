#!/bin/bash

# Pedir al usuario que ingrese un nombre
read -p "Ingrese su nombre para determinar su género: " name

# Hacer la solicitud a la API de Agify
response=$(curl -s "https://api.agify.io/?name=$name")

# Verificar si la solicitud fue exitosa
if [[ $? -ne 0 ]]; then
    echo "Error al conectarse a la API de Agify"
    exit 1
fi

# Extraer el género del JSON de respuesta
gender=$(echo "$response" | jq -r '.gender')

# Mostrar el resultado
echo "El género asociado al nombre '$name' es: $gender"

