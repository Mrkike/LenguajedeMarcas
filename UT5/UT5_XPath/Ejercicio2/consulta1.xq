(: 1.- Seleccionar los nombres de los módulos que se imparten en el instituto :)
for $nombre in doc("modulos.xml")/ies/modulos/modulo/nombre
return $nombre/text()