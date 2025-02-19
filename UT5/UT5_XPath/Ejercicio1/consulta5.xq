(: 5.- Seleccionar los años en los que se publicaron los decretos de título de los ciclos formativos:
 :)
for $decretoTitulo in doc("instituto.xml")/ies/ciclos/ciclo/decretoTitulo
return $decretoTitulo/@año 