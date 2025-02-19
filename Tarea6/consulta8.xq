(: 3. Marca y modelo de las impresoras con tamaño A3 (pueden tener otros) :)
for $nombre in doc("instituto.xml")/ies/nombre
return 
$nombre/text()

(: Comentario: Aquí busco las impresoras que tengan al menos un tamaño A3, aunque tengan otros tamaños. :)