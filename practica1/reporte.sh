#!/bin/bash
# reporte.sh - informe del equipo con formato amigable
MEMORIA=$(awk '/MemTotal/ {printf " %.1f", $2/1024/1024}' /proc/meminfo)
CPUS=$(nproc)
DISCO=$(df -h / | awk 'NR==2 {print $5}')
echo "=================================="
echo " REPORTE DEL EQUIPO"
echo "=================================="
printf " %-10s %s\n" "Usuario:" "$USER"
printf " %-10s %s\n" "Equipo:" "$(hostname)"
printf " %-10s %s\n" "Fecha:" "$(date '+ %F %T')"
printf " %-10s %s\n" "CPUs:" "$CPUS"
printf " %-10s %s GB\n" "Memoria:" "$MEMORIA"
printf " %-10s %s\n" "Disco /:" "$DISCO usado"
echo "=================================="
