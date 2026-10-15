#!/bin/bash
# monitor.sh - Registra fecha, disco usado y origen (manual o cron)

if [ -t 1 ]; then
	ORIGEN="manual"
else
	ORIGEN="cron"
fi

FECHA=$(date '+ %F %T')
DISCO=$(df -h / | awk 'NR==2 {print $5}')
echo "$FECHA $ORIGEN disco_usado=$DISCO" >> ~/practica1/monitor.log

