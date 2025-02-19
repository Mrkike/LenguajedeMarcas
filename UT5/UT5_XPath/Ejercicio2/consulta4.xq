(: 4.- Seleccionar los nombres de los módulos de menos de 5 horas semanales :)
for $modulo in doc("modulos.xml")/ies/modulos/modulo
where $modulo/horasSemanales < "5"
return $modulo/nombre/text()