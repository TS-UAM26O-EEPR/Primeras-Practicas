#!/bin/bash
# ciclos.sh - ciclos for y while

echo "== Ciclo for con una lista =="
for i in 1 2 3; do
	echo "Vuelta $i"
done

echo "== Ciclo for con archivos =="
for archivo in ejemplos/*.txt; do
	echo "Archivo: $archivo"
done

echo "== Ciclo while =="
N=3
while [ "$N" -gt 0 ]; do
	echo "Cuenta regresiva: $N"
	N=$((N - 1))
done
