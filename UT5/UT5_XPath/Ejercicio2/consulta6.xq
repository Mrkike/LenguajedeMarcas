(: 6.- Seleccionar las horas semanales de los módulos de más de 3 horas semanales
 :)
for $horasSemanales in doc("modulos.xml")/ies/modulos/modulo/horasSemanales
where $horasSemanales > "3"
return $horasSemanales/text()