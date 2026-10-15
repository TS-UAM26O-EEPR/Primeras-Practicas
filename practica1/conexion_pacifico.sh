#!/bin/bash
# conexion_pacifico.sh - Conexion SSH al servidor del curso (Pacifico)

USUARIO="ts26O"
SERVIDOR="pacifico.izt.uam.mx"
LLAVE="$HOME/.ssh/clave_pacifico"
ssh -i "$LLAVE" -o BatchMode=yes -o ConnectTimeout=10 \
	"$USUARIO@$SERVIDOR" "hostname; date; whoami"
