(: 2.- Seleccionar los nombres de los módulos del ciclo de ASIR :)
for $modulo in doc("modulos.xml")/ies/modulos/modulo
where $modulo/ciclo="ASIR"
return $modulo/nombre/text()