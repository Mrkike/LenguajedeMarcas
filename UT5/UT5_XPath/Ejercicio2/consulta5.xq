(: 5.- Seleccionar los nombres de los módulos que se imparten en el primer curso de ASIR :)
for $modulo in doc("modulos.xml")/ies/modulos/modulo
where $modulo/curso = "1" and $modulo/ciclo = "ASIR"
return $modulo/nombre/text()