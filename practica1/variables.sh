#!/bin/bash
# variables.sh - variables, argumentos y sustitución de comandos

NOMBRE="$1"
if [ -z "$NOMBRE" ]; then
	NOMBRE="mundo"
fi

HOY=$(date +%F)

echo "Hola $NOMBRE, hoy es $HOY"
echo "Estás en la carpeta: $(pwd)"
echo "Tu usuario es: $USER"

