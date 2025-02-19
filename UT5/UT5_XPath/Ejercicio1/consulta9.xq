(: 9.- Seleccionar los nombres de los ciclos formativos de 2008 o 2010 :)
for $ciclo in doc("instituto.xml")/ies/ciclos/ciclo
where $ciclo/decretoTitulo/@año > "2008" and $ciclo/decretoTitulo/@año < "2010"
return $ciclo/nombre