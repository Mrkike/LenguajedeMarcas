(: 4.- Seleccionar las siglas por las que se conocen los ciclos formativos :)
for $ciclo in doc("instituto.xml")/ies/ciclos/ciclo
return $ciclo/@id 