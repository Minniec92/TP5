#!/bin/bash

# Configuración
API_KEY="123456"
CITY="Buenos Aires"

# Hacer la solicitud a la API
response=$(curl -s "http://api.weatherapi.com/v1/current.json?key=$API_KEY&q=$CITY")

# Verificar si la solicitud fue exitosa
if [[ $? -ne 0 ]]; then
    echo "Error al conectarse a la API de weatherapi.com"
    exit 1
ftemperature_c=$(echo "$response" | jq -r '.current.temp_c')
weather_desc=$(echo "$response" | jq -r '.current.condition.text')

# Mostrar la información
echo "Clima actual en $CITY:"
echo "- Temperatura: $temperature_c °C"
echo "- Descripción del clima: $weather_desc"
