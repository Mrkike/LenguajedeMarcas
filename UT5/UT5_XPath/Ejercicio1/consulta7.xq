(: 7.- Seleccionar los nombres de los ciclos formativos de grado superior :)
for $ciclo in doc("instituto.xml")/ies/ciclos/ciclo
where $ciclo/grado ="Superior"
return $ciclo/nombre