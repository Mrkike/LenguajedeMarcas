(: 1.- Seleccionar el nombre del instituto :)
for $nombre in doc("instituto.xml")/ies/nombre
return 
<nombre>{$nombre/text()}</nombre>
