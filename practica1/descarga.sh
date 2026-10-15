#!/bin/bash
# descarga.sh - descarga una página web y muestra datos de ella

URL="https://example.com"
ARCHIVO="pagina.html"

if curl -sf -o "$ARCHIVO" "$URL"; then
	echo "Descarga correcta de $URL"
	echo "Tamaño: $(wc -c < "$ARCHIVO") bytes"
	echo "Título: $(grep -o '<title>.*</title>' "$ARCHIVO")"
else
	echo "No se pudo descargar $URL (¿tienes internet?)"
fi

