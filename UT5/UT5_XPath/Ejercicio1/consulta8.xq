(: 8.- Seleccionar los nombres de los ciclos formativos anteriores a 2010 :)
for $ciclo in doc("instituto.xml")/ies/ciclos/ciclo
where $ciclo/decretoTitulo/@año < "2010"
return $ciclo/nombre