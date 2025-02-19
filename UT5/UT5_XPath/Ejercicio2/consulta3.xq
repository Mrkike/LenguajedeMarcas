(: 3.- Seleccionar los nombres de los módulos que se imparten en el segundo curso de cualquier ciclo: :)
for $modulo in doc("modulos.xml")/ies/modulos/modulo
where $modulo/curso="2"
return $modulo/nombre/text()