(: 6.- Seleccionar los ciclos formativos de grado medio (obtener el elemento <ciclo> completo) :)
for $ciclo in doc("instituto.xml")/ies/ciclos/ciclo
where $ciclo/grado = "Medio"
return $ciclo