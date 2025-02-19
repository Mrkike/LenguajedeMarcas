(: 3.- Seleccionar el nombre de los ciclos formativos: :)
for $nombre in doc("instituto.xml")/ies/ciclos/ciclo/nombre
return $nombre/text() 